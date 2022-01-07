
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int gpfn; } ;


 int ptoa (int ) ;
 TYPE_1__ xs ;

vm_paddr_t
xs_address(void)
{

    return (ptoa(xs.gpfn));
}
