
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef size_t vm_offset_t ;
struct vnode {int dummy; } ;
struct vn_io_fault_args {int dummy; } ;
struct uio {scalar_t__ uio_rw; size_t uio_resid; int uio_iovcnt; size_t uio_offset; struct iovec* uio_iov; int uio_segflg; int uio_td; } ;
struct thread {int td_ma_cnt; int * td_ma; TYPE_2__* td_proc; } ;
struct iovec {size_t iov_len; char* iov_base; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_map; } ;


 int EFAULT ;
 int KASSERT (int,char*) ;
 int M_IOV ;
 int PAGE_SIZE ;
 int TDP_UIOHELD ;
 int UIO_NOCOPY ;
 scalar_t__ UIO_READ ;
 int UIO_USERSPACE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int atomic_add_long (int *,int) ;
 int atop (scalar_t__) ;
 struct uio* cloneuio (struct uio*) ;
 int curthread_pflags_restore (int) ;
 int curthread_pflags_set (int ) ;
 int free (struct uio*,int ) ;
 int io_hold_cnt ;
 size_t round_page (size_t) ;
 scalar_t__ trunc_page (size_t) ;
 int uiomove (int *,size_t,struct uio*) ;
 int vm_fault_quick_hold_pages (int *,size_t,size_t,int ,int *,int) ;
 int vm_page_unhold_pages (int *,int) ;
 int vn_io_fault_doio (struct vn_io_fault_args*,struct uio*,struct thread*) ;
 scalar_t__ vn_io_fault_prefault ;
 int vn_io_fault_prefault_user (struct uio*) ;
 int vn_io_faults_cnt ;

__attribute__((used)) static int
vn_io_fault1(struct vnode *vp, struct uio *uio, struct vn_io_fault_args *args,
    struct thread *td)
{
 vm_page_t ma[io_hold_cnt + 2];
 struct uio *uio_clone, short_uio;
 struct iovec short_iovec[1];
 vm_page_t *prev_td_ma;
 vm_prot_t prot;
 vm_offset_t addr, end;
 size_t len, resid;
 ssize_t adv;
 int error, cnt, saveheld, prev_td_ma_cnt;

 if (vn_io_fault_prefault) {
  error = vn_io_fault_prefault_user(uio);
  if (error != 0)
   return (error);
 }

 prot = uio->uio_rw == UIO_READ ? VM_PROT_WRITE : VM_PROT_READ;
 uio_clone = cloneuio(uio);
 resid = uio->uio_resid;

 short_uio.uio_segflg = UIO_USERSPACE;
 short_uio.uio_rw = uio->uio_rw;
 short_uio.uio_td = uio->uio_td;

 error = vn_io_fault_doio(args, uio, td);
 if (error != EFAULT)
  goto out;

 atomic_add_long(&vn_io_faults_cnt, 1);
 uio_clone->uio_segflg = UIO_NOCOPY;
 uiomove(((void*)0), resid - uio->uio_resid, uio_clone);
 uio_clone->uio_segflg = uio->uio_segflg;

 saveheld = curthread_pflags_set(TDP_UIOHELD);
 prev_td_ma = td->td_ma;
 prev_td_ma_cnt = td->td_ma_cnt;

 while (uio_clone->uio_resid != 0) {
  len = uio_clone->uio_iov->iov_len;
  if (len == 0) {
   KASSERT(uio_clone->uio_iovcnt >= 1,
       ("iovcnt underflow"));
   uio_clone->uio_iov++;
   uio_clone->uio_iovcnt--;
   continue;
  }
  if (len > io_hold_cnt * PAGE_SIZE)
   len = io_hold_cnt * PAGE_SIZE;
  addr = (uintptr_t)uio_clone->uio_iov->iov_base;
  end = round_page(addr + len);
  if (end < addr) {
   error = EFAULT;
   break;
  }
  cnt = atop(end - trunc_page(addr));





  cnt = vm_fault_quick_hold_pages(&td->td_proc->p_vmspace->vm_map,
      addr, len, prot, ma, io_hold_cnt + 2);
  if (cnt == -1) {
   error = EFAULT;
   break;
  }
  short_uio.uio_iov = &short_iovec[0];
  short_iovec[0].iov_base = (void *)addr;
  short_uio.uio_iovcnt = 1;
  short_uio.uio_resid = short_iovec[0].iov_len = len;
  short_uio.uio_offset = uio_clone->uio_offset;
  td->td_ma = ma;
  td->td_ma_cnt = cnt;

  error = vn_io_fault_doio(args, &short_uio, td);
  vm_page_unhold_pages(ma, cnt);
  adv = len - short_uio.uio_resid;

  uio_clone->uio_iov->iov_base =
      (char *)uio_clone->uio_iov->iov_base + adv;
  uio_clone->uio_iov->iov_len -= adv;
  uio_clone->uio_resid -= adv;
  uio_clone->uio_offset += adv;

  uio->uio_resid -= adv;
  uio->uio_offset += adv;

  if (error != 0 || adv == 0)
   break;
 }
 td->td_ma = prev_td_ma;
 td->td_ma_cnt = prev_td_ma_cnt;
 curthread_pflags_restore(saveheld);
out:
 free(uio_clone, M_IOV);
 return (error);
}
