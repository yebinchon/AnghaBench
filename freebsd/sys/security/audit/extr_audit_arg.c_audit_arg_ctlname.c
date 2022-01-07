
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_len; int ar_arg_ctlname; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_CTLNAME ;
 int ARG_LEN ;
 int ARG_SET_VALID (struct kaudit_record*,int) ;
 int bcopy (int*,int *,int) ;
 struct kaudit_record* currecord () ;

void
audit_arg_ctlname(int *name, int namelen)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 bcopy(name, &ar->k_ar.ar_arg_ctlname, namelen * sizeof(int));
 ar->k_ar.ar_arg_len = namelen;
 ARG_SET_VALID(ar, ARG_CTLNAME | ARG_LEN);
}
