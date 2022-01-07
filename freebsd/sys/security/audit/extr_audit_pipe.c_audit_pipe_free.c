
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct audit_pipe {TYPE_1__ ap_selinfo; int ap_cv; } ;


 int AUDIT_PIPE_LIST_WLOCK_ASSERT () ;
 int AUDIT_PIPE_LOCK_ASSERT (struct audit_pipe*) ;
 int AUDIT_PIPE_LOCK_DESTROY (struct audit_pipe*) ;
 int AUDIT_PIPE_SX_LOCK_DESTROY (struct audit_pipe*) ;
 int M_AUDIT_PIPE ;
 int TAILQ_REMOVE (int *,struct audit_pipe*,int ) ;
 int ap_list ;
 int audit_pipe_count ;
 int audit_pipe_flush (struct audit_pipe*) ;
 int audit_pipe_list ;
 int audit_pipe_preselect_flush_locked (struct audit_pipe*) ;
 int cv_destroy (int *) ;
 int free (struct audit_pipe*,int ) ;
 int knlist_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
audit_pipe_free(struct audit_pipe *ap)
{

 AUDIT_PIPE_LIST_WLOCK_ASSERT();
 AUDIT_PIPE_LOCK_ASSERT(ap);

 audit_pipe_preselect_flush_locked(ap);
 audit_pipe_flush(ap);
 cv_destroy(&ap->ap_cv);
 AUDIT_PIPE_SX_LOCK_DESTROY(ap);
 AUDIT_PIPE_LOCK_DESTROY(ap);
 seldrain(&ap->ap_selinfo);
 knlist_destroy(&ap->ap_selinfo.si_note);
 TAILQ_REMOVE(&audit_pipe_list, ap, ap_list);
 free(ap, M_AUDIT_PIPE);
 audit_pipe_count--;
}
