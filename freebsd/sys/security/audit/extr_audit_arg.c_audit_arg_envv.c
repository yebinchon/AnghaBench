
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_envc; int ar_arg_envv; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_ENVV ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int M_AUDITTEXT ;
 int M_WAITOK ;
 scalar_t__ audit_arge ;
 int bcopy (char*,int ,int) ;
 struct kaudit_record* currecord () ;
 int malloc (int,int ,int ) ;

void
audit_arg_envv(char *envv, int envc, int length)
{
 struct kaudit_record *ar;

 if (audit_arge == 0)
  return;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_envv = malloc(length, M_AUDITTEXT, M_WAITOK);
 bcopy(envv, ar->k_ar.ar_arg_envv, length);
 ar->k_ar.ar_arg_envc = envc;
 ARG_SET_VALID(ar, ARG_ENVV);
}
