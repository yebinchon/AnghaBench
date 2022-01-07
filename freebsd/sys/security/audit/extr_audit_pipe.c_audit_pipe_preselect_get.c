
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_preselect {int app_mask; } ;
struct audit_pipe {int dummy; } ;
typedef int au_mask_t ;
typedef int au_id_t ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int ENOENT ;
 struct audit_pipe_preselect* audit_pipe_preselect_find (struct audit_pipe*,int ) ;

__attribute__((used)) static int
audit_pipe_preselect_get(struct audit_pipe *ap, au_id_t auid,
    au_mask_t *maskp)
{
 struct audit_pipe_preselect *app;
 int error;

 AUDIT_PIPE_LOCK(ap);
 app = audit_pipe_preselect_find(ap, auid);
 if (app != ((void*)0)) {
  *maskp = app->app_mask;
  error = 0;
 } else
  error = ENOENT;
 AUDIT_PIPE_UNLOCK(ap);
 return (error);
}
