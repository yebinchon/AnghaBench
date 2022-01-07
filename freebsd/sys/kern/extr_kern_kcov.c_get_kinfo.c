
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_intr_nesting_level; struct kcov_info* td_kcov_info; int * td_intr_frame; } ;
struct kcov_info {int state; } ;


 scalar_t__ KCOV_STATE_RUNNING ;
 scalar_t__ atomic_load_acq_int (int *) ;

__attribute__((used)) static struct kcov_info *
get_kinfo(struct thread *td)
{
 struct kcov_info *info;


 if (td == ((void*)0))
  return (((void*)0));





 if (td->td_intr_nesting_level > 0 || td->td_intr_frame != ((void*)0))
  return (((void*)0));




 info = td->td_kcov_info;
 if (info == ((void*)0) ||
     atomic_load_acq_int(&info->state) != KCOV_STATE_RUNNING)
  return (((void*)0));

 return (info);
}
