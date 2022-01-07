
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct ib_umem {TYPE_2__* odp_data; } ;
struct TYPE_4__ {int * ops; int hlist; } ;
struct ib_ucontext {scalar_t__ tgid; int odp_mrs_count; int umem_rwsem; TYPE_1__ mn; int notifier_count; int no_private_counters; int umem_tree; } ;
typedef scalar_t__ pid_t ;
struct TYPE_5__ {int mn_counters_active; void* page_list; void* dma_list; int no_private_counters; int interval_tree; int notifier_completion; int umem_mutex; struct ib_umem* umem; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int current ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 scalar_t__ get_pid (int ) ;
 struct mm_struct* get_task_mm (int ) ;
 scalar_t__ ib_umem_end (struct ib_umem*) ;
 int ib_umem_notifiers ;
 int ib_umem_num_pages (struct ib_umem*) ;
 scalar_t__ ib_umem_start (struct ib_umem*) ;
 int init_completion (int *) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int mmput (struct mm_struct*) ;
 int mmu_notifier_register (TYPE_1__*,struct mm_struct*) ;
 int mutex_init (int *) ;
 int pr_err (char*,int) ;
 int put_pid (scalar_t__) ;
 int rbt_ib_umem_insert (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_pid_group_leader (int ) ;
 int up_read (int *) ;
 int vfree (void*) ;
 void* vzalloc (int) ;

int ib_umem_odp_get(struct ib_ucontext *context, struct ib_umem *umem)
{
 int ret_val;
 pid_t our_pid;
 struct mm_struct *mm = get_task_mm(current);

 if (!mm)
  return -EINVAL;


 rcu_read_lock();
 our_pid = get_pid(task_pid_group_leader(current));
 rcu_read_unlock();
 put_pid(our_pid);
 if (context->tgid != our_pid) {
  ret_val = -EINVAL;
  goto out_mm;
 }

 umem->odp_data = kzalloc(sizeof(*umem->odp_data), GFP_KERNEL);
 if (!umem->odp_data) {
  ret_val = -ENOMEM;
  goto out_mm;
 }
 umem->odp_data->umem = umem;

 mutex_init(&umem->odp_data->umem_mutex);

 init_completion(&umem->odp_data->notifier_completion);

 umem->odp_data->page_list = vzalloc(ib_umem_num_pages(umem) *
         sizeof(*umem->odp_data->page_list));
 if (!umem->odp_data->page_list) {
  ret_val = -ENOMEM;
  goto out_odp_data;
 }

 umem->odp_data->dma_list = vzalloc(ib_umem_num_pages(umem) *
       sizeof(*umem->odp_data->dma_list));
 if (!umem->odp_data->dma_list) {
  ret_val = -ENOMEM;
  goto out_page_list;
 }






 down_write(&context->umem_rwsem);
 context->odp_mrs_count++;
 if (likely(ib_umem_start(umem) != ib_umem_end(umem)))
  rbt_ib_umem_insert(&umem->odp_data->interval_tree,
       &context->umem_tree);
 if (likely(!atomic_read(&context->notifier_count)) ||
     context->odp_mrs_count == 1)
  umem->odp_data->mn_counters_active = 1;
 else
  list_add(&umem->odp_data->no_private_counters,
    &context->no_private_counters);
 downgrade_write(&context->umem_rwsem);

 if (context->odp_mrs_count == 1) {




  atomic_set(&context->notifier_count, 0);
  INIT_HLIST_NODE(&context->mn.hlist);
  context->mn.ops = &ib_umem_notifiers;




  ret_val = mmu_notifier_register(&context->mn, mm);
  if (ret_val) {
   pr_err("Failed to register mmu_notifier %d\n", ret_val);
   ret_val = -EBUSY;
   goto out_mutex;
  }
 }

 up_read(&context->umem_rwsem);







 mmput(mm);
 return 0;

out_mutex:
 up_read(&context->umem_rwsem);
 vfree(umem->odp_data->dma_list);
out_page_list:
 vfree(umem->odp_data->page_list);
out_odp_data:
 kfree(umem->odp_data);
out_mm:
 mmput(mm);
 return ret_val;
}
