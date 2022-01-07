
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kcov_info {struct thread* thread; int state; } ;


 int KCOV_STATE_DYING ;
 int atomic_store_int (int *,int ) ;
 int atomic_thread_fence_seq_cst () ;
 int kcov_free (struct kcov_info*) ;
 int kcov_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
kcov_mmap_cleanup(void *arg)
{
 struct kcov_info *info = arg;
 struct thread *thread;

 mtx_lock_spin(&kcov_lock);
 atomic_store_int(&info->state, KCOV_STATE_DYING);
 atomic_thread_fence_seq_cst();
 thread = info->thread;
 mtx_unlock_spin(&kcov_lock);

 if (thread != ((void*)0))
  return;
 kcov_free(info);
}
