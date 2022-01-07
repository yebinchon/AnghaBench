
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;


 long pmap_resident_count (int ) ;
 int vmspace_pmap (struct vmspace*) ;

long
vmspace_resident_count(struct vmspace *vmspace)
{
 return pmap_resident_count(vmspace_pmap(vmspace));
}
