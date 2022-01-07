
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SOFTWARE ;
 int EINVAL ;
 int crypto_devallowsoft ;
 int crypto_getcaps (int) ;

__attribute__((used)) static int
checkforsoftware(int *cridp)
{
 int crid;

 crid = *cridp;

 if (!crypto_devallowsoft) {
  if (crid & CRYPTOCAP_F_SOFTWARE) {
   if (crid & CRYPTOCAP_F_HARDWARE) {
    *cridp = CRYPTOCAP_F_HARDWARE;
    return 0;
   }
   return EINVAL;
  }
  if ((crid & CRYPTOCAP_F_HARDWARE) == 0 &&
      (crypto_getcaps(crid) & CRYPTOCAP_F_HARDWARE) == 0)
   return EINVAL;
 }
 return 0;
}
