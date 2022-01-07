
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,int ,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ,int ,int ) ;
 int cred_check_setresuid ;

int
mac_cred_check_setresuid(struct ucred *cred, uid_t ruid, uid_t euid,
    uid_t suid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setresuid, cred, ruid, euid, suid);
 MAC_CHECK_PROBE4(cred_check_setresuid, error, cred, ruid, euid,
     suid);

 return (error);
}
