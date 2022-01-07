
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union auditon_udata {int dummy; } auditon_udata ;
struct TYPE_2__ {int ar_arg_auditon; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_AUDITON ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int bcopy (void*,int *,int) ;
 struct kaudit_record* currecord () ;

void
audit_arg_auditon(union auditon_udata *udata)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 bcopy((void *)udata, &ar->k_ar.ar_arg_auditon,
     sizeof(ar->k_ar.ar_arg_auditon));
 ARG_SET_VALID(ar, ARG_AUDITON);
}
