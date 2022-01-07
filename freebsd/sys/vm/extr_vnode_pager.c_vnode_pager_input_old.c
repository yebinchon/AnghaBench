
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef TYPE_4__* vm_object_t ;
struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; TYPE_9__* uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct sf_buf {int dummy; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_17__ {int td_ucred; } ;
struct TYPE_13__ {scalar_t__ vnp_size; } ;
struct TYPE_14__ {TYPE_1__ vnp; } ;
struct TYPE_16__ {struct vnode* handle; TYPE_2__ un_pager; } ;
struct TYPE_15__ {scalar_t__ dirty; int pindex; } ;


 int EINVAL ;
 scalar_t__ IDX_TO_OFF (int ) ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_4__*) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 int VM_PAGER_BAD ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_OK ;
 int VOP_READ (struct vnode*,struct uio*,int ,int ) ;
 int bzero (scalar_t__,int) ;
 TYPE_9__* curthread ;
 struct sf_buf* sf_buf_alloc (TYPE_3__*,int ) ;
 int sf_buf_free (struct sf_buf*) ;
 scalar_t__ sf_buf_kva (struct sf_buf*) ;
 int vm_page_valid (TYPE_3__*) ;

__attribute__((used)) static int
vnode_pager_input_old(vm_object_t object, vm_page_t m)
{
 struct uio auio;
 struct iovec aiov;
 int error;
 int size;
 struct sf_buf *sf;
 struct vnode *vp;

 VM_OBJECT_ASSERT_WLOCKED(object);
 error = 0;




 if (IDX_TO_OFF(m->pindex) >= object->un_pager.vnp.vnp_size) {
  return VM_PAGER_BAD;
 } else {
  size = PAGE_SIZE;
  if (IDX_TO_OFF(m->pindex) + size > object->un_pager.vnp.vnp_size)
   size = object->un_pager.vnp.vnp_size - IDX_TO_OFF(m->pindex);
  vp = object->handle;
  VM_OBJECT_WUNLOCK(object);





  sf = sf_buf_alloc(m, 0);

  aiov.iov_base = (caddr_t)sf_buf_kva(sf);
  aiov.iov_len = size;
  auio.uio_iov = &aiov;
  auio.uio_iovcnt = 1;
  auio.uio_offset = IDX_TO_OFF(m->pindex);
  auio.uio_segflg = UIO_SYSSPACE;
  auio.uio_rw = UIO_READ;
  auio.uio_resid = size;
  auio.uio_td = curthread;

  error = VOP_READ(vp, &auio, 0, curthread->td_ucred);
  if (!error) {
   int count = size - auio.uio_resid;

   if (count == 0)
    error = EINVAL;
   else if (count != PAGE_SIZE)
    bzero((caddr_t)sf_buf_kva(sf) + count,
        PAGE_SIZE - count);
  }
  sf_buf_free(sf);

  VM_OBJECT_WLOCK(object);
 }
 KASSERT(m->dirty == 0, ("vnode_pager_input_old: page %p is dirty", m));
 if (!error)
  vm_page_valid(m);
 return error ? VM_PAGER_ERROR : VM_PAGER_OK;
}
