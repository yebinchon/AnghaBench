
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct ksem {int ks_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct ksem*,int ) ;
 int posixsem_create ;

void
mac_posixsem_create(struct ucred *cred, struct ksem *ks)
{

 MAC_POLICY_PERFORM_NOSLEEP(posixsem_create, cred, ks, ks->ks_label);
}
