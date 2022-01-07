
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_kqfilter_args {int dummy; } ;


 int vfs_kqfilter (struct vop_kqfilter_args*) ;

int
vop_stdkqfilter(struct vop_kqfilter_args *ap)
{
 return vfs_kqfilter(ap);
}
