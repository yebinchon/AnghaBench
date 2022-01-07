
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int UNIONFSDEBUG (char*) ;

int
unionfs_init(struct vfsconf *vfsp)
{
 UNIONFSDEBUG("unionfs_init\n");
 return (0);
}
