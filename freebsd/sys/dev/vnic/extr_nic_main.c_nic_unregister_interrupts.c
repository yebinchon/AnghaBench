
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int dummy; } ;


 int nic_disable_msix (struct nicpf*) ;
 int nic_free_all_interrupts (struct nicpf*) ;

__attribute__((used)) static void
nic_unregister_interrupts(struct nicpf *nic)
{

 nic_free_all_interrupts(nic);
 nic_disable_msix(nic);
}
