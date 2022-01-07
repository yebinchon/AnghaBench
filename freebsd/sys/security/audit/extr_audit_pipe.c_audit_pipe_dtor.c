
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe {int ap_sigio; } ;


 int AUDIT_PIPE_LIST_WLOCK () ;
 int AUDIT_PIPE_LIST_WUNLOCK () ;
 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int audit_pipe_free (struct audit_pipe*) ;
 int funsetown (int *) ;

__attribute__((used)) static void
audit_pipe_dtor(void *arg)
{
 struct audit_pipe *ap;

 ap = arg;
 funsetown(&ap->ap_sigio);
 AUDIT_PIPE_LIST_WLOCK();
 AUDIT_PIPE_LOCK(ap);
 audit_pipe_free(ap);
 AUDIT_PIPE_LIST_WUNLOCK();
}
