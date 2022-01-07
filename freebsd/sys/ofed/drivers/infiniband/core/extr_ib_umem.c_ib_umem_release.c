
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {unsigned long pinned_vm; int mmap_sem; } ;
struct ib_umem {unsigned long diff; int work; struct mm_struct* mm; int pid; struct ib_ucontext* context; scalar_t__ odp_data; } ;
struct ib_ucontext {scalar_t__ closing; int device; } ;


 int INIT_WORK (int *,int ) ;
 int PIDTYPE_PID ;
 int __ib_umem_release (int ,struct ib_umem*,int) ;
 int down_write (int *) ;
 int down_write_trylock (int *) ;
 struct task_struct* get_pid_task (int ,int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int ib_umem_account ;
 unsigned long ib_umem_num_pages (struct ib_umem*) ;
 int ib_umem_odp_release (struct ib_umem*) ;
 int ib_wq ;
 int kfree (struct ib_umem*) ;
 int mmput (struct mm_struct*) ;
 int put_pid (int ) ;
 int put_task_struct (struct task_struct*) ;
 int queue_work (int ,int *) ;
 int up_write (int *) ;

void ib_umem_release(struct ib_umem *umem)
{
 struct ib_ucontext *context = umem->context;
 struct mm_struct *mm;
 struct task_struct *task;
 unsigned long diff;

 if (umem->odp_data) {
  ib_umem_odp_release(umem);
  return;
 }

 __ib_umem_release(umem->context->device, umem, 1);

 task = get_pid_task(umem->pid, PIDTYPE_PID);
 put_pid(umem->pid);
 if (!task)
  goto out;
 mm = get_task_mm(task);
 put_task_struct(task);
 if (!mm)
  goto out;

 diff = ib_umem_num_pages(umem);
 if (context->closing) {
  if (!down_write_trylock(&mm->mmap_sem)) {
   INIT_WORK(&umem->work, ib_umem_account);
   umem->mm = mm;
   umem->diff = diff;

   queue_work(ib_wq, &umem->work);
   return;
  }
 } else
  down_write(&mm->mmap_sem);

 mm->pinned_vm -= diff;
 up_write(&mm->mmap_sem);
 mmput(mm);
out:
 kfree(umem);
}
