
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_notif_wait_data {struct iwm_softc* sc; int list; int lk_buf; } ;


 int IWM_WAIT_LOCK_INIT (struct iwm_notif_wait_data*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 struct iwm_notif_wait_data* malloc (int,int ,int) ;
 int snprintf (int ,int,char*) ;

struct iwm_notif_wait_data *
iwm_notification_wait_init(struct iwm_softc *sc)
{
 struct iwm_notif_wait_data *data;

 data = malloc(sizeof(*data), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (data != ((void*)0)) {
  snprintf(data->lk_buf, 32, "iwm wait_notif");
  IWM_WAIT_LOCK_INIT(data, data->lk_buf);
  STAILQ_INIT(&data->list);
  data->sc = sc;
 }

 return data;
}
