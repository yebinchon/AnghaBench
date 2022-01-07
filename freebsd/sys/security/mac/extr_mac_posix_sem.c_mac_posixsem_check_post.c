
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct ksem {int ks_label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct ucred*,struct ksem*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct ucred*,struct ksem*,int ) ;
 int posixsem_check_post ;

int
mac_posixsem_check_post(struct ucred *active_cred, struct ucred *file_cred,
    struct ksem *ks)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(posixsem_check_post, active_cred, file_cred,
     ks, ks->ks_label);
 MAC_CHECK_PROBE3(posixsem_check_post, error, active_cred, file_cred,
     ks);

 return (error);
}
