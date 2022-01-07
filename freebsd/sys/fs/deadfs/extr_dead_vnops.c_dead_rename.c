
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rename_args {int dummy; } ;


 int EXDEV ;
 int vop_rename_fail (struct vop_rename_args*) ;

__attribute__((used)) static int
dead_rename(struct vop_rename_args *ap)
{

 vop_rename_fail(ap);
 return (EXDEV);
}
