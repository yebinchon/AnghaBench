
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_login; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_LOGIN ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int MAXLOGNAME ;
 struct kaudit_record* currecord () ;
 int strlcpy (int ,char*,int ) ;

void
audit_arg_login(char *login)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 strlcpy(ar->k_ar.ar_arg_login, login, MAXLOGNAME);
 ARG_SET_VALID(ar, ARG_LOGIN);
}
