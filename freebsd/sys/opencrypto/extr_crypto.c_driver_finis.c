
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct cryptocap {scalar_t__ cc_sessions; scalar_t__ cc_koperations; int cc_flags; } ;


 int CRYPTOCAP_F_CLEANUP ;
 int CRYPTO_DRIVER_ASSERT () ;
 int bzero (struct cryptocap*,int) ;

__attribute__((used)) static void
driver_finis(struct cryptocap *cap)
{
 u_int32_t ses, kops;

 CRYPTO_DRIVER_ASSERT();

 ses = cap->cc_sessions;
 kops = cap->cc_koperations;
 bzero(cap, sizeof(*cap));
 if (ses != 0 || kops != 0) {




  cap->cc_flags |= CRYPTOCAP_F_CLEANUP;
  cap->cc_sessions = ses;
  cap->cc_koperations = kops;
 }
}
