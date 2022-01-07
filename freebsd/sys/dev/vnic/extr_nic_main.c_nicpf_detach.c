
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int check_link_mtx; int check_link; } ;
typedef int device_t ;


 int callout_drain (int *) ;
 struct nicpf* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int nic_unregister_interrupts (struct nicpf*) ;
 int nicpf_free_res (struct nicpf*) ;
 int pci_disable_busmaster (int ) ;
 int pci_iov_detach (int ) ;

__attribute__((used)) static int
nicpf_detach(device_t dev)
{
 struct nicpf *nic;
 int err;

 err = 0;
 nic = device_get_softc(dev);

 callout_drain(&nic->check_link);
 mtx_destroy(&nic->check_link_mtx);

 nic_unregister_interrupts(nic);
 nicpf_free_res(nic);
 pci_disable_busmaster(dev);






 return (err);
}
