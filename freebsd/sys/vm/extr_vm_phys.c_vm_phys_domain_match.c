
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int domainset_t ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; int domain; } ;


 scalar_t__ DOMAINSET_EMPTY (int *) ;
 int DOMAINSET_FFS (int *) ;
 scalar_t__ DOMAINSET_ISSET (int,int *) ;
 int DOMAINSET_SET (int ,int *) ;
 int DOMAINSET_ZERO (int *) ;
 TYPE_1__* mem_affinity ;
 int panic (char*) ;
 int vm_ndomains ;

int
vm_phys_domain_match(int prefer, vm_paddr_t low, vm_paddr_t high)
{
 return (0);

}
