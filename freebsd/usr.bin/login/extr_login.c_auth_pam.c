
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_CHANGE_EXPIRED_AUTHTOK ;



 int PAM_USER ;

 int getpwnam (char const*) ;
 int pam_acct_mgmt (int *,int) ;
 int pam_authenticate (int *,int) ;
 int pam_chauthtok (int *,int) ;
 int pam_end (int *,int) ;
 int pam_err ;
 int pam_get_item (int *,int ,void const**) ;
 int pam_silent ;
 int pam_syslog (char*) ;
 int * pamh ;
 int pwd ;
 int strcmp (int ,char const*) ;
 int username ;

__attribute__((used)) static int
auth_pam(void)
{
 const char *tmpl_user;
 const void *item;
 int rval;

 pam_err = pam_authenticate(pamh, pam_silent);
 switch (pam_err) {

 case 129:
  pam_err = pam_get_item(pamh, PAM_USER, &item);
  if (pam_err == 129) {
   tmpl_user = (const char *)item;
   if (strcmp(username, tmpl_user) != 0)
    pwd = getpwnam(tmpl_user);
  } else {
   pam_syslog("pam_get_item(PAM_USER)");
  }
  rval = 0;
  break;

 case 132:
 case 128:
 case 131:
  rval = 1;
  break;

 default:
  pam_syslog("pam_authenticate()");
  rval = -1;
  break;
 }

 if (rval == 0) {
  pam_err = pam_acct_mgmt(pamh, pam_silent);
  switch (pam_err) {
  case 129:
   break;
  case 130:
   pam_err = pam_chauthtok(pamh,
       pam_silent|PAM_CHANGE_EXPIRED_AUTHTOK);
   if (pam_err != 129) {
    pam_syslog("pam_chauthtok()");
    rval = 1;
   }
   break;
  default:
   pam_syslog("pam_acct_mgmt()");
   rval = 1;
   break;
  }
 }

 if (rval != 0) {
  pam_end(pamh, pam_err);
  pamh = ((void*)0);
 }
 return (rval);
}
