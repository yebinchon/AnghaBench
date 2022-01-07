
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ar_arg_argc; int ar_arg_argv; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_ARGV ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int M_AUDITTEXT ;
 int M_WAITOK ;
 scalar_t__ audit_argv ;
 int bcopy (char*,int ,int) ;
 struct kaudit_record* currecord () ;
 int malloc (int,int ,int ) ;

void
audit_arg_argv(char *argv, int argc, int length)
{
 struct kaudit_record *ar;

 if (audit_argv == 0)
  return;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_argv = malloc(length, M_AUDITTEXT, M_WAITOK);
 bcopy(argv, ar->k_ar.ar_arg_argv, length);
 ar->k_ar.ar_arg_argc = argc;
 ARG_SET_VALID(ar, ARG_ARGV);
}
