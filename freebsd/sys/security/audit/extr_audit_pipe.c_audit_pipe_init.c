
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_PIPE_LIST_LOCK_DESTROY () ;
 int AUDIT_PIPE_LIST_LOCK_INIT () ;
 int AUDIT_PIPE_NAME ;
 int GID_WHEEL ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int audit_pipe_cdevsw ;
 int * audit_pipe_dev ;
 int audit_pipe_list ;
 int * make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
audit_pipe_init(void *unused)
{

 TAILQ_INIT(&audit_pipe_list);
 AUDIT_PIPE_LIST_LOCK_INIT();
 audit_pipe_dev = make_dev(&audit_pipe_cdevsw, 0, UID_ROOT,
  GID_WHEEL, 0600, "%s", AUDIT_PIPE_NAME);
 if (audit_pipe_dev == ((void*)0)) {
  AUDIT_PIPE_LIST_LOCK_DESTROY();
  panic("Can't initialize audit pipe subsystem");
 }
}
