
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,void*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,void*,int) ;
 int system_check_audit ;

int
mac_system_check_audit(struct ucred *cred, void *record, int length)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(system_check_audit, cred, record, length);
 MAC_CHECK_PROBE3(system_check_audit, error, cred, record, length);

 return (error);
}
