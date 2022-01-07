
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ vmd_free_count; } ;


 TYPE_1__* vm_dom ;
 int vm_ndomains ;

u_int
vm_free_count(void)
{
 u_int v;
 int i;

 v = 0;
 for (i = 0; i < vm_ndomains; i++)
  v += vm_dom[i].vmd_free_count;

 return (v);
}
