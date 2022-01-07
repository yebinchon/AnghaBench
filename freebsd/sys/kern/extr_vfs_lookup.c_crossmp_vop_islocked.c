
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_islocked_args {int dummy; } ;


 int LK_SHARED ;

__attribute__((used)) static int
crossmp_vop_islocked(struct vop_islocked_args *ap)
{

 return (LK_SHARED);
}
