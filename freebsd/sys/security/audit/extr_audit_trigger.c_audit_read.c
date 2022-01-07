
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct trigger_info {int trigger; } ;
struct cdev {int dummy; } ;


 int M_AUDITTRIGGER ;
 int PCATCH ;
 int PSOCK ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct trigger_info* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct trigger_info*,int ) ;
 int audit_trigger_mtx ;
 int free (struct trigger_info*,int ) ;
 int list ;
 int msleep (int *,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int trigger_list ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
audit_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error = 0;
 struct trigger_info *ti = ((void*)0);

 mtx_lock(&audit_trigger_mtx);
 while (TAILQ_EMPTY(&trigger_list)) {
  error = msleep(&trigger_list, &audit_trigger_mtx,
      PSOCK | PCATCH, "auditd", 0);
  if (error)
   break;
 }
 if (!error) {
  ti = TAILQ_FIRST(&trigger_list);
  TAILQ_REMOVE(&trigger_list, ti, list);
 }
 mtx_unlock(&audit_trigger_mtx);
 if (!error) {
  error = uiomove(&ti->trigger, sizeof(ti->trigger), uio);
  free(ti, M_AUDITTRIGGER);
 }
 return (error);
}
