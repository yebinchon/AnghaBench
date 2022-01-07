
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe {int dummy; } ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int audit_pipe_preselect_flush_locked (struct audit_pipe*) ;

__attribute__((used)) static void
audit_pipe_preselect_flush(struct audit_pipe *ap)
{

 AUDIT_PIPE_LOCK(ap);
 audit_pipe_preselect_flush_locked(ap);
 AUDIT_PIPE_UNLOCK(ap);
}
