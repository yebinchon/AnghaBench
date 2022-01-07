
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct knote {int kn_status; TYPE_1__* kn_fop; } ;
struct TYPE_2__ {int (* f_detach ) (struct knote*) ;} ;


 int KN_DETACHED ;
 int knote_drop_detached (struct knote*,struct thread*) ;
 int stub1 (struct knote*) ;

__attribute__((used)) static void
knote_drop(struct knote *kn, struct thread *td)
{

 if ((kn->kn_status & KN_DETACHED) == 0)
  kn->kn_fop->f_detach(kn);
 knote_drop_detached(kn, td);
}
