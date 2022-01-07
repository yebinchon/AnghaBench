
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger_info {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int M_AUDITTRIGGER ;
 int TAILQ_EMPTY (int *) ;
 struct trigger_info* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct trigger_info*,int ) ;
 scalar_t__ audit_isopen ;
 int audit_trigger_mtx ;
 int free (struct trigger_info*,int ) ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int trigger_list ;

__attribute__((used)) static int
audit_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct trigger_info *ti;


 mtx_lock(&audit_trigger_mtx);
 audit_isopen = 0;
 while (!TAILQ_EMPTY(&trigger_list)) {
  ti = TAILQ_FIRST(&trigger_list);
  TAILQ_REMOVE(&trigger_list, ti, list);
  free(ti, M_AUDITTRIGGER);
 }
 mtx_unlock(&audit_trigger_mtx);

 return (0);
}
