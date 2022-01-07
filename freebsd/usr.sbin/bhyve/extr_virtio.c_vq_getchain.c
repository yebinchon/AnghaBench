
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
struct vqueue_info {scalar_t__ vq_last_avail; scalar_t__ vq_qsize; struct virtio_desc* vq_desc; TYPE_2__* vq_avail; struct virtio_softc* vq_vs; } ;
struct vmctx {int dummy; } ;
struct virtio_softc {TYPE_3__* vs_vc; TYPE_1__* vs_pi; } ;
struct virtio_desc {scalar_t__ vd_next; int vd_flags; int vd_len; int vd_addr; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {char* vc_name; int vc_hv_caps; } ;
struct TYPE_5__ {scalar_t__* va_ring; scalar_t__ va_idx; } ;
struct TYPE_4__ {struct vmctx* pi_vmctx; } ;


 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VQ_MAX_DESCRIPTORS ;
 int VRING_DESC_F_INDIRECT ;
 int VRING_DESC_F_NEXT ;
 int _vq_record (int,struct virtio_desc volatile*,struct vmctx*,struct iovec*,int,scalar_t__*) ;
 int fprintf (int ,char*,char const*,...) ;
 struct virtio_desc* paddr_guest2host (struct vmctx*,int ,int) ;
 int stderr ;

int
vq_getchain(struct vqueue_info *vq, uint16_t *pidx,
     struct iovec *iov, int n_iov, uint16_t *flags)
{
 int i;
 u_int ndesc, n_indir;
 u_int idx, next;
 volatile struct virtio_desc *vdir, *vindir, *vp;
 struct vmctx *ctx;
 struct virtio_softc *vs;
 const char *name;

 vs = vq->vq_vs;
 name = vs->vs_vc->vc_name;
 idx = vq->vq_last_avail;
 ndesc = (uint16_t)((u_int)vq->vq_avail->va_idx - idx);
 if (ndesc == 0)
  return (0);
 if (ndesc > vq->vq_qsize) {

  fprintf(stderr,
      "%s: ndesc (%u) out of range, driver confused?\r\n",
      name, (u_int)ndesc);
  return (-1);
 }
 ctx = vs->vs_pi->pi_vmctx;
 *pidx = next = vq->vq_avail->va_ring[idx & (vq->vq_qsize - 1)];
 vq->vq_last_avail++;
 for (i = 0; i < VQ_MAX_DESCRIPTORS; next = vdir->vd_next) {
  if (next >= vq->vq_qsize) {
   fprintf(stderr,
       "%s: descriptor index %u out of range, "
       "driver confused?\r\n",
       name, next);
   return (-1);
  }
  vdir = &vq->vq_desc[next];
  if ((vdir->vd_flags & VRING_DESC_F_INDIRECT) == 0) {
   _vq_record(i, vdir, ctx, iov, n_iov, flags);
   i++;
  } else if ((vs->vs_vc->vc_hv_caps &
      VIRTIO_RING_F_INDIRECT_DESC) == 0) {
   fprintf(stderr,
       "%s: descriptor has forbidden INDIRECT flag, "
       "driver confused?\r\n",
       name);
   return (-1);
  } else {
   n_indir = vdir->vd_len / 16;
   if ((vdir->vd_len & 0xf) || n_indir == 0) {
    fprintf(stderr,
        "%s: invalid indir len 0x%x, "
        "driver confused?\r\n",
        name, (u_int)vdir->vd_len);
    return (-1);
   }
   vindir = paddr_guest2host(ctx,
       vdir->vd_addr, vdir->vd_len);







   next = 0;
   for (;;) {
    vp = &vindir[next];
    if (vp->vd_flags & VRING_DESC_F_INDIRECT) {
     fprintf(stderr,
         "%s: indirect desc has INDIR flag,"
         " driver confused?\r\n",
         name);
     return (-1);
    }
    _vq_record(i, vp, ctx, iov, n_iov, flags);
    if (++i > VQ_MAX_DESCRIPTORS)
     goto loopy;
    if ((vp->vd_flags & VRING_DESC_F_NEXT) == 0)
     break;
    next = vp->vd_next;
    if (next >= n_indir) {
     fprintf(stderr,
         "%s: invalid next %u > %u, "
         "driver confused?\r\n",
         name, (u_int)next, n_indir);
     return (-1);
    }
   }
  }
  if ((vdir->vd_flags & VRING_DESC_F_NEXT) == 0)
   return (i);
 }
loopy:
 fprintf(stderr,
     "%s: descriptor loop? count > %d - driver confused?\r\n",
     name, i);
 return (-1);
}
