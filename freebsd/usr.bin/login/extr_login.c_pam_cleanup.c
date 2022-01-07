
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_DELETE_CRED ;
 scalar_t__ PAM_SUCCESS ;
 scalar_t__ pam_close_session (int *,int ) ;
 scalar_t__ pam_cred_established ;
 int pam_end (int *,scalar_t__) ;
 scalar_t__ pam_err ;
 scalar_t__ pam_session_established ;
 scalar_t__ pam_setcred (int *,int) ;
 int pam_silent ;
 int pam_syslog (char*) ;
 int * pamh ;

__attribute__((used)) static void
pam_cleanup(void)
{

 if (pamh != ((void*)0)) {
  if (pam_session_established) {
   pam_err = pam_close_session(pamh, 0);
   if (pam_err != PAM_SUCCESS)
    pam_syslog("pam_close_session()");
  }
  pam_session_established = 0;
  if (pam_cred_established) {
   pam_err = pam_setcred(pamh, pam_silent|PAM_DELETE_CRED);
   if (pam_err != PAM_SUCCESS)
    pam_syslog("pam_setcred()");
  }
  pam_cred_established = 0;
  pam_end(pamh, pam_err);
  pamh = ((void*)0);
 }
}
