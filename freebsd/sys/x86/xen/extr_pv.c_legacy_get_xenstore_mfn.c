
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int store_mfn; } ;


 TYPE_1__* legacy_start_info ;

__attribute__((used)) static vm_paddr_t
legacy_get_xenstore_mfn(void)
{

 return (legacy_start_info->store_mfn);
}
