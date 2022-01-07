
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exportlist {size_t ex_numsecflavors; int* ex_secflavors; } ;


 int AUTH_SYS ;
 int LOG_ERR ;
 size_t MAXSECFLAVORS ;
 int RPCSEC_GSS_KRB5 ;
 int RPCSEC_GSS_KRB5I ;
 int RPCSEC_GSS_KRB5P ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static int
parsesec(char *seclist, struct exportlist *ep)
{
 char *cp, savedc;
 int flavor;

 ep->ex_numsecflavors = 0;
 for (;;) {
  cp = strchr(seclist, ':');
  if (cp) {
   savedc = *cp;
   *cp = '\0';
  }

  if (!strcmp(seclist, "sys"))
   flavor = AUTH_SYS;
  else if (!strcmp(seclist, "krb5"))
   flavor = RPCSEC_GSS_KRB5;
  else if (!strcmp(seclist, "krb5i"))
   flavor = RPCSEC_GSS_KRB5I;
  else if (!strcmp(seclist, "krb5p"))
   flavor = RPCSEC_GSS_KRB5P;
  else {
   if (cp)
    *cp = savedc;
   syslog(LOG_ERR, "bad sec flavor: %s", seclist);
   return (1);
  }
  if (ep->ex_numsecflavors == MAXSECFLAVORS) {
   if (cp)
    *cp = savedc;
   syslog(LOG_ERR, "too many sec flavors: %s", seclist);
   return (1);
  }
  ep->ex_secflavors[ep->ex_numsecflavors] = flavor;
  ep->ex_numsecflavors++;
  if (cp) {
   *cp = savedc;
   seclist = cp + 1;
  } else {
   break;
  }
 }
 return (0);
}
