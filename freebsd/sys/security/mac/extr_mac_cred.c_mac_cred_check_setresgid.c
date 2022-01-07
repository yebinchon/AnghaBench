
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,int ,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,int ,int ,int ) ;
 int cred_check_setresgid ;

int
mac_cred_check_setresgid(struct ucred *cred, gid_t rgid, gid_t egid,
    gid_t sgid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(cred_check_setresgid, cred, rgid, egid, sgid);
 MAC_CHECK_PROBE4(cred_check_setresgid, error, cred, rgid, egid,
     sgid);

 return (error);
}
