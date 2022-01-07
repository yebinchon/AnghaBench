
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct ib_umem {struct ib_umem* odp_data; int page_list; int dma_list; int notifier_completion; int no_private_counters; int mn_counters_active; int interval_tree; struct ib_ucontext* context; } ;
struct ib_ucontext {int umem_rwsem; int mn; int tgid; int odp_mrs_count; int umem_tree; } ;


 int PIDTYPE_PID ;
 int complete_all (int *) ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 struct task_struct* get_pid_task (int ,int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 scalar_t__ ib_umem_end (struct ib_umem*) ;
 int ib_umem_odp_unmap_dma_pages (struct ib_umem*,scalar_t__,scalar_t__) ;
 scalar_t__ ib_umem_start (struct ib_umem*) ;
 int kfree (struct ib_umem*) ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 int mmput (struct mm_struct*) ;
 int mmu_notifier_unregister (int *,struct mm_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rbt_ib_umem_remove (int *,int *) ;
 int up_read (int *) ;
 int vfree (int ) ;

void ib_umem_odp_release(struct ib_umem *umem)
{
 struct ib_ucontext *context = umem->context;







 ib_umem_odp_unmap_dma_pages(umem, ib_umem_start(umem),
        ib_umem_end(umem));

 down_write(&context->umem_rwsem);
 if (likely(ib_umem_start(umem) != ib_umem_end(umem)))
  rbt_ib_umem_remove(&umem->odp_data->interval_tree,
       &context->umem_tree);
 context->odp_mrs_count--;
 if (!umem->odp_data->mn_counters_active) {
  list_del(&umem->odp_data->no_private_counters);
  complete_all(&umem->odp_data->notifier_completion);
 }
 downgrade_write(&context->umem_rwsem);
 if (!context->odp_mrs_count) {
  struct task_struct *owning_process = ((void*)0);
  struct mm_struct *owning_mm = ((void*)0);

  owning_process = get_pid_task(context->tgid,
           PIDTYPE_PID);
  if (owning_process == ((void*)0))




   goto out;

  owning_mm = get_task_mm(owning_process);
  if (owning_mm == ((void*)0))




   goto out_put_task;
  mmu_notifier_unregister(&context->mn, owning_mm);

  mmput(owning_mm);

out_put_task:
  put_task_struct(owning_process);
 }
out:
 up_read(&context->umem_rwsem);

 vfree(umem->odp_data->dma_list);
 vfree(umem->odp_data->page_list);
 kfree(umem->odp_data);
 kfree(umem);
}
