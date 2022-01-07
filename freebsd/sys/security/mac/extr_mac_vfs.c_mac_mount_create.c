
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int mnt_label; } ;


 int MAC_POLICY_PERFORM (int ,struct ucred*,struct mount*,int ) ;
 int mount_create ;

void
mac_mount_create(struct ucred *cred, struct mount *mp)
{

 MAC_POLICY_PERFORM(mount_create, cred, mp, mp->mnt_label);
}
