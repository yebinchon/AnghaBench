
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int so_domain; int so_type; int so_protocol; } ;
struct TYPE_4__ {TYPE_1__ ar_arg_sockinfo; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_SOCKINFO ;
 struct kaudit_record* currecord () ;

void
audit_arg_socket(int sodomain, int sotype, int soprotocol)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_sockinfo.so_domain = sodomain;
 ar->k_ar.ar_arg_sockinfo.so_type = sotype;
 ar->k_ar.ar_arg_sockinfo.so_protocol = soprotocol;
 ARG_SET_VALID(ar, ARG_SOCKINFO);
}
