
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_generic_args {TYPE_1__* a_desc; } ;
struct TYPE_2__ {int vdesc_name; } ;


 int panic (char*,int ) ;

int
vop_panic(struct vop_generic_args *ap)
{

 panic("filesystem goof: vop_panic[%s]", ap->a_desc->vdesc_name);
}
