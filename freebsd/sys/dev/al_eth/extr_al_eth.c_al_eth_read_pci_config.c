
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int pci_read_config (int ,int,int) ;

int
al_eth_read_pci_config(void *handle, int where, uint32_t *val)
{


 *val = pci_read_config((device_t)handle, where, sizeof(*val));
 return (0);
}
