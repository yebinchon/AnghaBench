
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_affinity {int dummy; } ;


 int DOMAINSET_SET (int,int *) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int all_domains ;
 struct mem_affinity* mem_affinity ;
 int* mem_locality ;
 int vm_ndomains ;

void
vm_phys_register_domains(int ndomains, struct mem_affinity *affinity,
    int *locality)
{
 (void)ndomains;
 (void)affinity;
 (void)locality;

}
