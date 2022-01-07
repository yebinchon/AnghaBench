
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_preselect {int app_mask; int app_auid; } ;
struct audit_pipe {int ap_preselect_list; } ;
typedef int au_mask_t ;
typedef int au_id_t ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int M_AUDIT_PIPE_PRESELECT ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct audit_pipe_preselect*,int ) ;
 int app_list ;
 struct audit_pipe_preselect* audit_pipe_preselect_find (struct audit_pipe*,int ) ;
 int free (struct audit_pipe_preselect*,int ) ;
 struct audit_pipe_preselect* malloc (int,int ,int ) ;

__attribute__((used)) static void
audit_pipe_preselect_set(struct audit_pipe *ap, au_id_t auid, au_mask_t mask)
{
 struct audit_pipe_preselect *app, *app_new;





 app_new = malloc(sizeof(*app_new), M_AUDIT_PIPE_PRESELECT, M_WAITOK);
 AUDIT_PIPE_LOCK(ap);
 app = audit_pipe_preselect_find(ap, auid);
 if (app == ((void*)0)) {
  app = app_new;
  app_new = ((void*)0);
  app->app_auid = auid;
  TAILQ_INSERT_TAIL(&ap->ap_preselect_list, app, app_list);
 }
 app->app_mask = mask;
 AUDIT_PIPE_UNLOCK(ap);
 if (app_new != ((void*)0))
  free(app_new, M_AUDIT_PIPE_PRESELECT);
}
