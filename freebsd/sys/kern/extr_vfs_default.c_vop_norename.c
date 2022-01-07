
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rename_args {int dummy; } ;


 int EOPNOTSUPP ;
 int vop_rename_fail (struct vop_rename_args*) ;

__attribute__((used)) static int
vop_norename(struct vop_rename_args *ap)
{

 vop_rename_fail(ap);
 return (EOPNOTSUPP);
}
