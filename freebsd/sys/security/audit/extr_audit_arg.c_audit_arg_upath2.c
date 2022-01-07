
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int ar_arg_upath2; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_UPATH2 ;
 int audit_arg_upath (struct thread*,int,char*,int *) ;
 struct kaudit_record* currecord () ;

void
audit_arg_upath2(struct thread *td, int dirfd, char *upath)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 audit_arg_upath(td, dirfd, upath, &ar->k_ar.ar_arg_upath2);
 ARG_SET_VALID(ar, ARG_UPATH2);
}
