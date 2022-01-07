
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct ksem {int ks_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct ksem*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ksem*,int ) ;
 int posixsem_check_unlink ;

int
mac_posixsem_check_unlink(struct ucred *cred, struct ksem *ks)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixsem_check_unlink, cred, ks,
     ks->ks_label);
 MAC_CHECK_PROBE2(posixsem_check_unlink, error, cred, ks);

 return (error);
}
