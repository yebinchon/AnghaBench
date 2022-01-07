
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ,int ) ;
 int cred_check_setreuid ;

int
mac_cred_check_setreuid(struct ucred *cred, uid_t ruid, uid_t euid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setreuid, cred, ruid, euid);
 MAC_CHECK_PROBE3(cred_check_setreuid, error, cred, ruid, euid);

 return (error);
}
