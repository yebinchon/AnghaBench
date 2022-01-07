
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pam_response {int * resp; scalar_t__ resp_retcode; } ;
struct pam_message {scalar_t__ msg_style; } ;


 int PAM_CONV_ERR ;
 scalar_t__ PAM_PROMPT_ECHO_OFF ;
 int PAM_SUCCESS ;
 struct pam_response* malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
pam_conv(int n, const struct pam_message **msg, struct pam_response **resp,
  void *data)
{

  if (n != 1 || msg[0]->msg_style != PAM_PROMPT_ECHO_OFF)
    return (PAM_CONV_ERR);
  if ((*resp = malloc(sizeof(struct pam_response))) == ((void*)0))
    return (PAM_CONV_ERR);
  (*resp)[0].resp = strdup((const char *)data);
  (*resp)[0].resp_retcode = 0;

  return ((*resp)[0].resp != ((void*)0) ? PAM_SUCCESS : PAM_CONV_ERR);
}
