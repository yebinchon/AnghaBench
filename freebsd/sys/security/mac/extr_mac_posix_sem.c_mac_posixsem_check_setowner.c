
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int dummy; } ;
struct ksem {int ks_label; } ;
typedef int gid_t ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct ksem*,int ,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ksem*,int ,int ,int ) ;
 int posixsem_check_setowner ;

int
mac_posixsem_check_setowner(struct ucred *cred, struct ksem *ks, uid_t uid,
    gid_t gid)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixsem_check_setowner, cred, ks,
     ks->ks_label, uid, gid);
 MAC_CHECK_PROBE4(posixsem_check_setowner, error, cred, ks,
     uid, gid);

 return (error);
}
