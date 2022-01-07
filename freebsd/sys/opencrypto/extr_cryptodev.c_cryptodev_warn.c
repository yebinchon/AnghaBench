
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct csession {int cipher; int mac; } ;
 int gone_in (int,char*) ;
 int ratecheck (struct timeval*,int *) ;
 int warninterval ;

__attribute__((used)) static void
cryptodev_warn(struct csession *cse)
{
 static struct timeval arc4warn, blfwarn, castwarn, deswarn, md5warn;
 static struct timeval skipwarn, tdeswarn;

 switch (cse->cipher) {
 case 130:
  if (ratecheck(&deswarn, &warninterval))
   gone_in(13, "DES cipher via /dev/crypto");
  break;
 case 134:
  if (ratecheck(&tdeswarn, &warninterval))
   gone_in(13, "3DES cipher via /dev/crypto");
  break;
 case 132:
  if (ratecheck(&blfwarn, &warninterval))
   gone_in(13, "Blowfish cipher via /dev/crypto");
  break;
 case 131:
  if (ratecheck(&castwarn, &warninterval))
   gone_in(13, "CAST128 cipher via /dev/crypto");
  break;
 case 128:
  if (ratecheck(&skipwarn, &warninterval))
   gone_in(13, "Skipjack cipher via /dev/crypto");
  break;
 case 133:
  if (ratecheck(&arc4warn, &warninterval))
   gone_in(13, "ARC4 cipher via /dev/crypto");
  break;
 }

 switch (cse->mac) {
 case 129:
  if (ratecheck(&md5warn, &warninterval))
   gone_in(13, "MD5-HMAC authenticator via /dev/crypto");
  break;
 }
}
