
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_preselect {int dummy; } ;
struct audit_pipe {int ap_preselect_list; } ;


 int AUDIT_PIPE_LOCK_ASSERT (struct audit_pipe*) ;
 int M_AUDIT_PIPE_PRESELECT ;
 struct audit_pipe_preselect* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct audit_pipe_preselect*,int ) ;
 int app_list ;
 int free (struct audit_pipe_preselect*,int ) ;

__attribute__((used)) static void
audit_pipe_preselect_flush_locked(struct audit_pipe *ap)
{
 struct audit_pipe_preselect *app;

 AUDIT_PIPE_LOCK_ASSERT(ap);

 while ((app = TAILQ_FIRST(&ap->ap_preselect_list)) != ((void*)0)) {
  TAILQ_REMOVE(&ap->ap_preselect_list, app, app_list);
  free(app, M_AUDIT_PIPE_PRESELECT);
 }
}
