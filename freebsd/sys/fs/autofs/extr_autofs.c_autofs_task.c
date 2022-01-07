
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct autofs_request {int ar_wildcards; int ar_done; int ar_in_progress; int ar_error; int ar_path; int ar_id; } ;
struct TYPE_2__ {int sc_lock; int sc_cv; } ;


 int AUTOFS_WARN (char*,int ,int ,int ) ;
 int ETIMEDOUT ;
 TYPE_1__* autofs_softc ;
 int autofs_timeout ;
 int cv_broadcast (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
autofs_task(void *context, int pending)
{
 struct autofs_request *ar;

 ar = context;

 sx_xlock(&autofs_softc->sc_lock);
 AUTOFS_WARN("request %d for %s timed out after %d seconds",
     ar->ar_id, ar->ar_path, autofs_timeout);



 ar->ar_error = ETIMEDOUT;
 ar->ar_wildcards = 1;
 ar->ar_done = 1;
 ar->ar_in_progress = 0;
 cv_broadcast(&autofs_softc->sc_cv);
 sx_xunlock(&autofs_softc->sc_lock);
}
