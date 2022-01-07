
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MOUNT ;
 int MAGIC_VNODE ;
 int vnode_associate_singlelabel ;

__attribute__((used)) static void
test_vnode_associate_singlelabel(struct mount *mp, struct label *mplabel,
    struct vnode *vp, struct label *vplabel)
{

 LABEL_CHECK(mplabel, MAGIC_MOUNT);
 LABEL_CHECK(vplabel, MAGIC_VNODE);
 COUNTER_INC(vnode_associate_singlelabel);
}
