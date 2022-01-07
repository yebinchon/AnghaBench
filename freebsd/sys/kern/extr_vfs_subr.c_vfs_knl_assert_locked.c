
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;

__attribute__((used)) static void
vfs_knl_assert_locked(void *arg)
{





}
