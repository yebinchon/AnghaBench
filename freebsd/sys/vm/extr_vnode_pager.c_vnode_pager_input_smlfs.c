
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef TYPE_5__* vm_page_t ;
typedef int vm_page_bits_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_offset_t ;
typedef TYPE_6__* vm_object_t ;
struct vnode {int v_iflag; TYPE_2__* v_mount; } ;
struct sf_buf {int dummy; } ;
struct bufobj {int dummy; } ;
struct buf {scalar_t__ b_rcred; scalar_t__ b_wcred; int b_blkno; int b_bcount; int b_bufsize; int b_runningbufspace; int b_ioflags; struct vnode* b_vp; int b_iooffset; scalar_t__ b_data; int b_iodone; int b_iocmd; } ;
typedef int daddr_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_16__ {scalar_t__ vnp_size; } ;
struct TYPE_17__ {TYPE_3__ vnp; } ;
struct TYPE_19__ {TYPE_4__ un_pager; struct vnode* handle; } ;
struct TYPE_18__ {int valid; int dirty; int pindex; } ;
struct TYPE_14__ {int f_iosize; } ;
struct TYPE_15__ {TYPE_1__ mnt_stat; } ;
struct TYPE_13__ {int td_ucred; } ;


 int BIO_ERROR ;
 int BIO_READ ;
 int EIO ;
 scalar_t__ IDX_TO_OFF (int ) ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 scalar_t__ NOCRED ;
 int PAGE_SIZE ;
 int PVM ;
 int VI_DOOMED ;
 int VM_OBJECT_WLOCK (TYPE_6__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_6__*) ;
 int VM_PAGER_BAD ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_OK ;
 int VOP_BMAP (struct vnode*,int ,struct bufobj**,int ,int *,int *) ;
 int atomic_add_long (int *,int) ;
 int bdone ;
 int bstrategy (struct buf*) ;
 int bwait (struct buf*,int ,char*) ;
 int bzero (scalar_t__,int) ;
 void* crhold (int ) ;
 TYPE_10__* curthread ;
 int dbtob (int) ;
 int pbgetbo (struct bufobj*,struct buf*) ;
 int pbrelbo (struct buf*) ;
 int runningbufspace ;
 struct sf_buf* sf_buf_alloc (TYPE_5__*,int ) ;
 int sf_buf_free (struct sf_buf*) ;
 scalar_t__ sf_buf_kva (struct sf_buf*) ;
 struct buf* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct buf*) ;
 int vm_page_bits (int,int) ;
 int vnode_pager_addr (struct vnode*,scalar_t__,int*,int *) ;
 int vnode_pbuf_zone ;

__attribute__((used)) static int
vnode_pager_input_smlfs(vm_object_t object, vm_page_t m)
{
 struct vnode *vp;
 struct bufobj *bo;
 struct buf *bp;
 struct sf_buf *sf;
 daddr_t fileaddr;
 vm_offset_t bsize;
 vm_page_bits_t bits;
 int error, i;

 error = 0;
 vp = object->handle;
 if (vp->v_iflag & VI_DOOMED)
  return VM_PAGER_BAD;

 bsize = vp->v_mount->mnt_stat.f_iosize;

 VOP_BMAP(vp, 0, &bo, 0, ((void*)0), ((void*)0));

 sf = sf_buf_alloc(m, 0);

 for (i = 0; i < PAGE_SIZE / bsize; i++) {
  vm_ooffset_t address;

  bits = vm_page_bits(i * bsize, bsize);
  if (m->valid & bits)
   continue;

  address = IDX_TO_OFF(m->pindex) + i * bsize;
  if (address >= object->un_pager.vnp.vnp_size) {
   fileaddr = -1;
  } else {
   error = vnode_pager_addr(vp, address, &fileaddr, ((void*)0));
   if (error)
    break;
  }
  if (fileaddr != -1) {
   bp = uma_zalloc(vnode_pbuf_zone, M_WAITOK);


   bp->b_iocmd = BIO_READ;
   bp->b_iodone = bdone;
   KASSERT(bp->b_rcred == NOCRED, ("leaking read ucred"));
   KASSERT(bp->b_wcred == NOCRED, ("leaking write ucred"));
   bp->b_rcred = crhold(curthread->td_ucred);
   bp->b_wcred = crhold(curthread->td_ucred);
   bp->b_data = (caddr_t)sf_buf_kva(sf) + i * bsize;
   bp->b_blkno = fileaddr;
   pbgetbo(bo, bp);
   bp->b_vp = vp;
   bp->b_bcount = bsize;
   bp->b_bufsize = bsize;
   bp->b_runningbufspace = bp->b_bufsize;
   atomic_add_long(&runningbufspace, bp->b_runningbufspace);


   bp->b_iooffset = dbtob(bp->b_blkno);
   bstrategy(bp);

   bwait(bp, PVM, "vnsrd");

   if ((bp->b_ioflags & BIO_ERROR) != 0)
    error = EIO;




   bp->b_vp = ((void*)0);
   pbrelbo(bp);
   uma_zfree(vnode_pbuf_zone, bp);
   if (error)
    break;
  } else
   bzero((caddr_t)sf_buf_kva(sf) + i * bsize, bsize);
  KASSERT((m->dirty & bits) == 0,
      ("vnode_pager_input_smlfs: page %p is dirty", m));
  VM_OBJECT_WLOCK(object);
  m->valid |= bits;
  VM_OBJECT_WUNLOCK(object);
 }
 sf_buf_free(sf);
 if (error) {
  return VM_PAGER_ERROR;
 }
 return VM_PAGER_OK;
}
