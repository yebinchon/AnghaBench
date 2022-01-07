
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_notification_wait {int dummy; } ;
struct iwm_notif_wait_data {int list; } ;


 int IWM_WAIT_LOCK (struct iwm_notif_wait_data*) ;
 int IWM_WAIT_UNLOCK (struct iwm_notif_wait_data*) ;
 int STAILQ_REMOVE (int *,struct iwm_notification_wait*,int ,int ) ;
 int entry ;
 int iwm_notification_wait ;

void
iwm_remove_notification(struct iwm_notif_wait_data *notif_data,
    struct iwm_notification_wait *wait_entry)
{
 IWM_WAIT_LOCK(notif_data);
 STAILQ_REMOVE(&notif_data->list, wait_entry, iwm_notification_wait,
     entry);
 IWM_WAIT_UNLOCK(notif_data);
}
