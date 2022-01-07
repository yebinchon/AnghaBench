
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_ftable_entry {int dummy; } ;


 int M_NOWAIT ;
 int M_VXLAN ;
 int M_ZERO ;
 struct vxlan_ftable_entry* malloc (int,int ,int) ;

__attribute__((used)) static struct vxlan_ftable_entry *
vxlan_ftable_entry_alloc(void)
{
 struct vxlan_ftable_entry *fe;

 fe = malloc(sizeof(*fe), M_VXLAN, M_ZERO | M_NOWAIT);

 return (fe);
}
