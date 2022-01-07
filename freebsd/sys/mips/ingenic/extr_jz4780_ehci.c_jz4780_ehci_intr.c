
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ehci_interrupt (void*) ;

__attribute__((used)) static void
jz4780_ehci_intr(void *arg)
{

 ehci_interrupt(arg);
}
