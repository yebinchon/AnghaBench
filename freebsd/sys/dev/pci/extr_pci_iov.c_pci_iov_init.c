
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;
typedef int device_t ;


 int DRIVER_CONFIG_NAME ;
 int PCI_IOV_INIT (int ,int ,int const*) ;
 int PF_CONFIG_NAME ;
 int * nvlist_get_nvlist (int const*,int ) ;

__attribute__((used)) static int
pci_iov_init(device_t dev, uint16_t num_vfs, const nvlist_t *config)
{
 const nvlist_t *device, *driver_config;

 device = nvlist_get_nvlist(config, PF_CONFIG_NAME);
 driver_config = nvlist_get_nvlist(device, DRIVER_CONFIG_NAME);
 return (PCI_IOV_INIT(dev, num_vfs, driver_config));
}
