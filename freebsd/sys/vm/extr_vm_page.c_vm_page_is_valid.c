
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_page_bits_t ;
struct TYPE_3__ {int valid; } ;


 int vm_page_bits (int,int) ;

int
vm_page_is_valid(vm_page_t m, int base, int size)
{
 vm_page_bits_t bits;

 bits = vm_page_bits(base, size);
 return (m->valid != 0 && (m->valid & bits) == bits);
}
