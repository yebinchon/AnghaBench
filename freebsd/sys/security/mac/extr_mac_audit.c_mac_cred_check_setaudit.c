
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct auditinfo {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct auditinfo*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct auditinfo*) ;
 int cred_check_setaudit ;

int
mac_cred_check_setaudit(struct ucred *cred, struct auditinfo *ai)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setaudit, cred, ai);
 MAC_CHECK_PROBE2(cred_check_setaudit, error, cred, ai);

 return (error);
}
