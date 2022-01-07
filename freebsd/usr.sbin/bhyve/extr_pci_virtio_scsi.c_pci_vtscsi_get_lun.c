
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int
pci_vtscsi_get_lun(uint8_t *lun)
{

 return (((lun[2] << 8) | lun[3]) & 0x3fff);
}
