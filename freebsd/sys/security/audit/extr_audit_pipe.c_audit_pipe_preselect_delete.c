
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_preselect {int dummy; } ;
struct audit_pipe {int ap_preselect_list; } ;
typedef int au_id_t ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int ENOENT ;
 int M_AUDIT_PIPE_PRESELECT ;
 int TAILQ_REMOVE (int *,struct audit_pipe_preselect*,int ) ;
 int app_list ;
 struct audit_pipe_preselect* audit_pipe_preselect_find (struct audit_pipe*,int ) ;
 int free (struct audit_pipe_preselect*,int ) ;

__attribute__((used)) static int
audit_pipe_preselect_delete(struct audit_pipe *ap, au_id_t auid)
{
 struct audit_pipe_preselect *app;
 int error;

 AUDIT_PIPE_LOCK(ap);
 app = audit_pipe_preselect_find(ap, auid);
 if (app != ((void*)0)) {
  TAILQ_REMOVE(&ap->ap_preselect_list, app, app_list);
  error = 0;
 } else
  error = ENOENT;
 AUDIT_PIPE_UNLOCK(ap);
 if (app != ((void*)0))
  free(app, M_AUDIT_PIPE_PRESELECT);
 return (error);
}
