
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger_info {unsigned int trigger; } ;


 int ENODEV ;
 int M_AUDITTRIGGER ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct trigger_info*,int ) ;
 int audit_isopen ;
 int audit_trigger_mtx ;
 int free (struct trigger_info*,int ) ;
 int list ;
 struct trigger_info* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int trigger_list ;
 int wakeup (int *) ;

int
audit_send_trigger(unsigned int trigger)
{
 struct trigger_info *ti;

 ti = malloc(sizeof *ti, M_AUDITTRIGGER, M_WAITOK);
 mtx_lock(&audit_trigger_mtx);
 if (!audit_isopen) {

  mtx_unlock(&audit_trigger_mtx);
  free(ti, M_AUDITTRIGGER);
  return (ENODEV);
 }
 ti->trigger = trigger;
 TAILQ_INSERT_TAIL(&trigger_list, ti, list);
 wakeup(&trigger_list);
 mtx_unlock(&audit_trigger_mtx);
 return (0);
}
