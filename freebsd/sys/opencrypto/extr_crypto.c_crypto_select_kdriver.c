
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocap {int cc_flags; scalar_t__ cc_koperations; int * cc_dev; } ;
struct cryptkop {int dummy; } ;


 int CRYPTOCAP_F_CLEANUP ;
 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SOFTWARE ;
 int CRYPTO_DRIVER_ASSERT () ;
 struct cryptocap* crypto_drivers ;
 int crypto_drivers_num ;
 scalar_t__ kdriver_suitable (struct cryptocap*,struct cryptkop const*) ;

__attribute__((used)) static struct cryptocap *
crypto_select_kdriver(const struct cryptkop *krp, int flags)
{
 struct cryptocap *cap, *best;
 int match, hid;

 CRYPTO_DRIVER_ASSERT();




 if (flags & CRYPTOCAP_F_HARDWARE)
  match = CRYPTOCAP_F_HARDWARE;
 else
  match = CRYPTOCAP_F_SOFTWARE;
 best = ((void*)0);
again:
 for (hid = 0; hid < crypto_drivers_num; hid++) {
  cap = &crypto_drivers[hid];





  if (cap->cc_dev == ((void*)0) ||
      (cap->cc_flags & CRYPTOCAP_F_CLEANUP) ||
      (cap->cc_flags & match) == 0)
   continue;


  if (kdriver_suitable(cap, krp)) {
   if (best == ((void*)0) ||
       cap->cc_koperations < best->cc_koperations)
    best = cap;
  }
 }
 if (best != ((void*)0))
  return best;
 if (match == CRYPTOCAP_F_HARDWARE && (flags & CRYPTOCAP_F_SOFTWARE)) {

  match = CRYPTOCAP_F_SOFTWARE;
  goto again;
 }
 return best;
}
