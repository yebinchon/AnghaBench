
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_svipc_which; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_SVIPC_WHICH ;
 struct kaudit_record* currecord () ;

void
audit_arg_svipc_which(int which)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_svipc_which = which;
 ARG_SET_VALID(ar, ARG_SVIPC_WHICH);
}
