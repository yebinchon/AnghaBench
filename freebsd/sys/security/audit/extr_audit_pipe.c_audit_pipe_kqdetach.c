
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct audit_pipe {TYPE_1__ ap_selinfo; } ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int knlist_remove (int *,struct knote*,int) ;

__attribute__((used)) static void
audit_pipe_kqdetach(struct knote *kn)
{
 struct audit_pipe *ap;

 ap = (struct audit_pipe *)kn->kn_hook;
 AUDIT_PIPE_LOCK(ap);
 knlist_remove(&ap->ap_selinfo.si_note, kn, 1);
 AUDIT_PIPE_UNLOCK(ap);
}
