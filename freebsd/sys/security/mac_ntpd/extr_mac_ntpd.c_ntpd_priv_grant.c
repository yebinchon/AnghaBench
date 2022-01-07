
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_uid; } ;


 int EPERM ;





 scalar_t__ ntpd_enabled ;
 scalar_t__ ntpd_uid ;

__attribute__((used)) static int
ntpd_priv_grant(struct ucred *cred, int priv)
{

 if (ntpd_enabled && cred->cr_uid == ntpd_uid) {
  switch (priv) {
  case 132:
  case 131:
  case 128:
  case 130:
  case 129:
   return (0);
  default:
   break;
  }
 }
 return (EPERM);
}
