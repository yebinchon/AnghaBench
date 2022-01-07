
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_umem {TYPE_1__* odp_data; } ;
struct TYPE_2__ {scalar_t__ notifiers_count; int umem_mutex; int notifier_completion; int notifiers_seq; scalar_t__ mn_counters_active; } ;


 int complete_all (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ib_umem_notifier_end_account(struct ib_umem *item)
{
 mutex_lock(&item->odp_data->umem_mutex);



 if (item->odp_data->mn_counters_active) {





  ++item->odp_data->notifiers_seq;
  if (--item->odp_data->notifiers_count == 0)
   complete_all(&item->odp_data->notifier_completion);
 }
 mutex_unlock(&item->odp_data->umem_mutex);
}
