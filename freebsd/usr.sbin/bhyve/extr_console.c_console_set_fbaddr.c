
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc; } ;


 int bhyvegc_set_fbaddr (int ,void*) ;
 TYPE_1__ console ;

void
console_set_fbaddr(void *fbaddr)
{
 bhyvegc_set_fbaddr(console.gc, fbaddr);
}
