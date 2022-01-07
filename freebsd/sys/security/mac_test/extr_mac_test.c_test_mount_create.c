
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_MOUNT ;
 int mount_create ;

__attribute__((used)) static void
test_mount_create(struct ucred *cred, struct mount *mp,
    struct label *mplabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(mplabel, MAGIC_MOUNT);
 COUNTER_INC(mount_create);
}
