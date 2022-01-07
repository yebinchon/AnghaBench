
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_notification_wait {int aborted; int triggered; } ;
struct iwm_notif_wait_data {int list; int lk_mtx; } ;


 int IWM_WAIT_LOCK (struct iwm_notif_wait_data*) ;
 int IWM_WAIT_UNLOCK (struct iwm_notif_wait_data*) ;
 int STAILQ_REMOVE (int *,struct iwm_notification_wait*,int ,int ) ;
 int entry ;
 int iwm_notification_wait ;
 int msleep (struct iwm_notification_wait*,int *,int ,char*,int) ;

int
iwm_wait_notification(struct iwm_notif_wait_data *notif_data,
    struct iwm_notification_wait *wait_entry, int timeout)
{
 int ret = 0;

 IWM_WAIT_LOCK(notif_data);
 if (!wait_entry->triggered && !wait_entry->aborted) {
  ret = msleep(wait_entry, &notif_data->lk_mtx, 0, "iwm_notif",
      timeout);
 }
 STAILQ_REMOVE(&notif_data->list, wait_entry, iwm_notification_wait,
     entry);
 IWM_WAIT_UNLOCK(notif_data);

 return ret;
}
