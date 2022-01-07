
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_notif_wait_data {int list; } ;


 int IWM_WAIT_LOCK_DESTROY (struct iwm_notif_wait_data*) ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int STAILQ_EMPTY (int *) ;
 int free (struct iwm_notif_wait_data*,int ) ;

void
iwm_notification_wait_free(struct iwm_notif_wait_data *notif_data)
{
 KASSERT(STAILQ_EMPTY(&notif_data->list), ("notif list isn't empty"));
 IWM_WAIT_LOCK_DESTROY(notif_data);
 free(notif_data, M_DEVBUF);
}
