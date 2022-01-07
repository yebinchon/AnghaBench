
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int at_type; } ;
struct TYPE_4__ {TYPE_1__ ai_termid; int ai_auid; } ;
struct ucred {TYPE_2__ cr_audit; } ;


 int AU_DEFAUDITID ;
 int AU_IPv4 ;

void
audit_cred_kproc0(struct ucred *cred)
{

 cred->cr_audit.ai_auid = AU_DEFAUDITID;
 cred->cr_audit.ai_termid.at_type = AU_IPv4;
}
