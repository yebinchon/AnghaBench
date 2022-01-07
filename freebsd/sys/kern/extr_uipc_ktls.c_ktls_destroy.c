
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct ktls_session {TYPE_1__* be; } ;
struct TYPE_2__ {int use_count; } ;


 scalar_t__ ktls_allow_unload ;
 int ktls_backends_lock ;
 int ktls_cleanup (struct ktls_session*) ;
 int ktls_session_zone ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int uma_zfree (int ,struct ktls_session*) ;

void
ktls_destroy(struct ktls_session *tls)
{
 struct rm_priotracker prio;

 ktls_cleanup(tls);
 if (tls->be != ((void*)0) && ktls_allow_unload) {
  rm_rlock(&ktls_backends_lock, &prio);
  tls->be->use_count--;
  rm_runlock(&ktls_backends_lock, &prio);
 }
 uma_zfree(ktls_session_zone, tls);
}
