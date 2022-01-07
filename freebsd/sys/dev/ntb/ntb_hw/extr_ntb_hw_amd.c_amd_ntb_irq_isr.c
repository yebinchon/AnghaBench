
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd_ntb_interrupt (void*,int ) ;

__attribute__((used)) static void
amd_ntb_irq_isr(void *arg)
{

 amd_ntb_interrupt(arg, 0);
}
