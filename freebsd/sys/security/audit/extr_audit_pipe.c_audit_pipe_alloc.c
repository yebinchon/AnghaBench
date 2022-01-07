
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct audit_pipe {int ap_preselect_mode; int ap_preselect_list; int ap_preselect_naflags; int ap_preselect_flags; int ap_cv; TYPE_1__ ap_selinfo; int ap_queue; int ap_qlimit; } ;


 int AUDITPIPE_PRESELECT_MODE_TRAIL ;
 int AUDIT_PIPE_LIST_WLOCK () ;
 int AUDIT_PIPE_LIST_WUNLOCK () ;
 int AUDIT_PIPE_LOCK_INIT (struct audit_pipe*) ;
 int AUDIT_PIPE_MTX (struct audit_pipe*) ;
 int AUDIT_PIPE_QLIMIT_DEFAULT ;
 int AUDIT_PIPE_SX_LOCK_INIT (struct audit_pipe*) ;
 int M_AUDIT_PIPE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct audit_pipe*,int ) ;
 int ap_list ;
 int audit_pipe_count ;
 int audit_pipe_ever ;
 int audit_pipe_list ;
 int bzero (int *,int) ;
 int cv_init (int *,char*) ;
 int knlist_init_mtx (int *,int ) ;
 struct audit_pipe* malloc (int,int ,int) ;

__attribute__((used)) static struct audit_pipe *
audit_pipe_alloc(void)
{
 struct audit_pipe *ap;

 ap = malloc(sizeof(*ap), M_AUDIT_PIPE, M_NOWAIT | M_ZERO);
 if (ap == ((void*)0))
  return (((void*)0));
 ap->ap_qlimit = AUDIT_PIPE_QLIMIT_DEFAULT;
 TAILQ_INIT(&ap->ap_queue);
 knlist_init_mtx(&ap->ap_selinfo.si_note, AUDIT_PIPE_MTX(ap));
 AUDIT_PIPE_LOCK_INIT(ap);
 AUDIT_PIPE_SX_LOCK_INIT(ap);
 cv_init(&ap->ap_cv, "audit_pipe");
 bzero(&ap->ap_preselect_flags, sizeof(ap->ap_preselect_flags));
 bzero(&ap->ap_preselect_naflags, sizeof(ap->ap_preselect_naflags));
 TAILQ_INIT(&ap->ap_preselect_list);
 ap->ap_preselect_mode = AUDITPIPE_PRESELECT_MODE_TRAIL;




 AUDIT_PIPE_LIST_WLOCK();
 TAILQ_INSERT_HEAD(&audit_pipe_list, ap, ap_list);
 audit_pipe_count++;
 audit_pipe_ever++;
 AUDIT_PIPE_LIST_WUNLOCK();

 return (ap);
}
