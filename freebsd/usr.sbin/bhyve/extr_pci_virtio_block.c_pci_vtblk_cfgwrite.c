
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPRINTF (char*) ;

__attribute__((used)) static int
pci_vtblk_cfgwrite(void *vsc, int offset, int size, uint32_t value)
{

 DPRINTF(("vtblk: write to readonly reg %d\n\r", offset));
 return (1);
}
