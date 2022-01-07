
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_ftable_entry {int dummy; } ;


 int M_VXLAN ;
 int free (struct vxlan_ftable_entry*,int ) ;

__attribute__((used)) static void
vxlan_ftable_entry_free(struct vxlan_ftable_entry *fe)
{

 free(fe, M_VXLAN);
}
