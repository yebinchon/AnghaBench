
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct auditinfo_addr {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct auditinfo_addr*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct auditinfo_addr*) ;
 int cred_check_setaudit_addr ;

int
mac_cred_check_setaudit_addr(struct ucred *cred, struct auditinfo_addr *aia)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setaudit_addr, cred, aia);
 MAC_CHECK_PROBE2(cred_check_setaudit_addr, error, cred, aia);

 return (error);
}
