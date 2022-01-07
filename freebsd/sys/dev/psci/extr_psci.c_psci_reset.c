
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int psci_shutdown (int *,int ) ;

void
psci_reset(void)
{

 psci_shutdown(((void*)0), 0);
}
