
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct ksem {int ks_label; } ;
typedef int mode_t ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct ksem*,int ) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ksem*,int ,int ) ;
 int posixsem_check_setmode ;

int
mac_posixsem_check_setmode(struct ucred *cred, struct ksem *ks, mode_t mode)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixsem_check_setmode, cred, ks,
     ks->ks_label, mode);
 MAC_CHECK_PROBE3(posixsem_check_setmode, error, cred, ks, mode);

 return (error);
}
