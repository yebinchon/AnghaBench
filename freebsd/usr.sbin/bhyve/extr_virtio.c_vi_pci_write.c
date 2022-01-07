
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vqueue_info {scalar_t__ vq_msix_idx; int (* vq_notify ) (int ,struct vqueue_info*) ;} ;
struct vmctx {int dummy; } ;
struct virtio_softc {int vs_flags; scalar_t__ vs_curq; scalar_t__ vs_mtx; struct vqueue_info* vs_queues; scalar_t__ vs_msix_cfg_idx; scalar_t__ vs_status; scalar_t__ vs_negotiated_caps; struct virtio_consts* vs_vc; } ;
struct virtio_consts {char* vc_name; int vc_cfgsize; int (* vc_cfgwrite ) (int ,int,int,scalar_t__) ;scalar_t__ vc_hv_caps; scalar_t__ vc_nvq; int (* vc_reset ) (int ) ;int (* vc_qnotify ) (int ,struct vqueue_info*) ;int (* vc_apply_features ) (int ,scalar_t__) ;} ;
struct pci_devinst {struct virtio_softc* pi_arg; } ;
struct config_reg {int cr_size; char* cr_name; scalar_t__ cr_ro; } ;


 int DEV_SOFTC (struct virtio_softc*) ;
 int VIRTIO_USE_MSIX ;
 scalar_t__ VTCFG_R_CFG0 ;
 scalar_t__ VTCFG_R_CFG1 ;







 int assert (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int pci_emul_msix_twrite (struct pci_devinst*,scalar_t__,int,scalar_t__) ;
 scalar_t__ pci_msix_enabled (struct pci_devinst*) ;
 int pci_msix_pba_bar (struct pci_devinst*) ;
 int pci_msix_table_bar (struct pci_devinst*) ;
 int pthread_mutex_lock (scalar_t__) ;
 int pthread_mutex_unlock (scalar_t__) ;
 int stderr ;
 int stub1 (int ,int,int,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int ,struct vqueue_info*) ;
 int stub4 (int ,struct vqueue_info*) ;
 int stub5 (int ) ;
 struct config_reg* vi_find_cr (scalar_t__) ;
 int vi_vq_init (struct virtio_softc*,scalar_t__) ;

void
vi_pci_write(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
      int baridx, uint64_t offset, int size, uint64_t value)
{
 struct virtio_softc *vs = pi->pi_arg;
 struct vqueue_info *vq;
 struct virtio_consts *vc;
 struct config_reg *cr;
 uint64_t virtio_config_size, max;
 const char *name;
 uint32_t newoff;
 int error;

 if (vs->vs_flags & VIRTIO_USE_MSIX) {
  if (baridx == pci_msix_table_bar(pi) ||
      baridx == pci_msix_pba_bar(pi)) {
   pci_emul_msix_twrite(pi, offset, size, value);
   return;
  }
 }


 assert(baridx == 0);

 if (vs->vs_mtx)
  pthread_mutex_lock(vs->vs_mtx);

 vc = vs->vs_vc;
 name = vc->vc_name;

 if (size != 1 && size != 2 && size != 4)
  goto bad;

 if (pci_msix_enabled(pi))
  virtio_config_size = VTCFG_R_CFG1;
 else
  virtio_config_size = VTCFG_R_CFG0;

 if (offset >= virtio_config_size) {




  newoff = offset - virtio_config_size;
  max = vc->vc_cfgsize ? vc->vc_cfgsize : 0x100000000;
  if (newoff + size > max)
   goto bad;
  error = (*vc->vc_cfgwrite)(DEV_SOFTC(vs), newoff, size, value);
  if (!error)
   goto done;
 }

bad:
 cr = vi_find_cr(offset);
 if (cr == ((void*)0) || cr->cr_size != size || cr->cr_ro) {
  if (cr != ((void*)0)) {

   if (cr->cr_size != size)
    fprintf(stderr,
        "%s: write to %s: bad size %d\r\n",
        name, cr->cr_name, size);
   if (cr->cr_ro)
    fprintf(stderr,
        "%s: write to read-only reg %s\r\n",
        name, cr->cr_name);
  } else {
   fprintf(stderr,
       "%s: write to bad offset/size %jd/%d\r\n",
       name, (uintmax_t)offset, size);
  }
  goto done;
 }

 switch (offset) {
 case 133:
  vs->vs_negotiated_caps = value & vc->vc_hv_caps;
  if (vc->vc_apply_features)
   (*vc->vc_apply_features)(DEV_SOFTC(vs),
       vs->vs_negotiated_caps);
  break;
 case 132:
  if (vs->vs_curq >= vc->vc_nvq)
   goto bad_qindex;
  vi_vq_init(vs, value);
  break;
 case 130:





  vs->vs_curq = value;
  break;
 case 131:
  if (value >= vc->vc_nvq) {
   fprintf(stderr, "%s: queue %d notify out of range\r\n",
    name, (int)value);
   goto done;
  }
  vq = &vs->vs_queues[value];
  if (vq->vq_notify)
   (*vq->vq_notify)(DEV_SOFTC(vs), vq);
  else if (vc->vc_qnotify)
   (*vc->vc_qnotify)(DEV_SOFTC(vs), vq);
  else
   fprintf(stderr,
       "%s: qnotify queue %d: missing vq/vc notify\r\n",
    name, (int)value);
  break;
 case 128:
  vs->vs_status = value;
  if (value == 0)
   (*vc->vc_reset)(DEV_SOFTC(vs));
  break;
 case 134:
  vs->vs_msix_cfg_idx = value;
  break;
 case 129:
  if (vs->vs_curq >= vc->vc_nvq)
   goto bad_qindex;
  vq = &vs->vs_queues[vs->vs_curq];
  vq->vq_msix_idx = value;
  break;
 }
 goto done;

bad_qindex:
 fprintf(stderr,
     "%s: write config reg %s: curq %d >= max %d\r\n",
     name, cr->cr_name, vs->vs_curq, vc->vc_nvq);
done:
 if (vs->vs_mtx)
  pthread_mutex_unlock(vs->vs_mtx);
}
