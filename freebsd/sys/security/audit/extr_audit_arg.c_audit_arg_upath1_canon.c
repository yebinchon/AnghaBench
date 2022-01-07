
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_upath1; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_UPATH1 ;
 int audit_arg_upath_canon (char*,int *) ;
 struct kaudit_record* currecord () ;

void
audit_arg_upath1_canon(char *upath)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 audit_arg_upath_canon(upath, &ar->k_ar.ar_arg_upath1);
 ARG_SET_VALID(ar, ARG_UPATH1);
}
