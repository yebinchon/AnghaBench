
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ) ;
 int cred_check_seteuid ;

int
mac_cred_check_seteuid(struct ucred *cred, uid_t euid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_seteuid, cred, euid);
 MAC_CHECK_PROBE2(cred_check_seteuid, error, cred, euid);

 return (error);
}
