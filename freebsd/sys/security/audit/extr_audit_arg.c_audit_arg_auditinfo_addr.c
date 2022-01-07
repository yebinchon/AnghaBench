
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * at_addr; int at_port; int at_type; } ;
struct TYPE_6__ {int am_failure; int am_success; } ;
struct TYPE_9__ {TYPE_3__ ar_arg_termid_addr; TYPE_1__ ar_arg_amask; int ar_arg_asid; int ar_arg_auid; } ;
struct kaudit_record {TYPE_4__ k_ar; } ;
struct TYPE_10__ {int * at_addr; int at_port; int at_type; } ;
struct TYPE_7__ {int am_failure; int am_success; } ;
struct auditinfo_addr {TYPE_5__ ai_termid; TYPE_2__ ai_mask; int ai_asid; int ai_auid; } ;


 int ARG_AMASK ;
 int ARG_ASID ;
 int ARG_AUID ;
 int ARG_SET_VALID (struct kaudit_record*,int) ;
 int ARG_TERMID_ADDR ;
 struct kaudit_record* currecord () ;

void
audit_arg_auditinfo_addr(struct auditinfo_addr *au_info)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_auid = au_info->ai_auid;
 ar->k_ar.ar_arg_asid = au_info->ai_asid;
 ar->k_ar.ar_arg_amask.am_success = au_info->ai_mask.am_success;
 ar->k_ar.ar_arg_amask.am_failure = au_info->ai_mask.am_failure;
 ar->k_ar.ar_arg_termid_addr.at_type = au_info->ai_termid.at_type;
 ar->k_ar.ar_arg_termid_addr.at_port = au_info->ai_termid.at_port;
 ar->k_ar.ar_arg_termid_addr.at_addr[0] = au_info->ai_termid.at_addr[0];
 ar->k_ar.ar_arg_termid_addr.at_addr[1] = au_info->ai_termid.at_addr[1];
 ar->k_ar.ar_arg_termid_addr.at_addr[2] = au_info->ai_termid.at_addr[2];
 ar->k_ar.ar_arg_termid_addr.at_addr[3] = au_info->ai_termid.at_addr[3];
 ARG_SET_VALID(ar, ARG_AUID | ARG_ASID | ARG_AMASK | ARG_TERMID_ADDR);
}
