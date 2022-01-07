
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int PCI_RID2BUS (int ) ;
 int PCI_RID2FUNC (int ) ;
 int PCI_RID2SLOT (int ) ;

void
pcib_decode_rid(device_t pcib, uint16_t rid, int *bus, int *slot,
    int *func)
{

 *bus = PCI_RID2BUS(rid);
 *slot = PCI_RID2SLOT(rid);
 *func = PCI_RID2FUNC(rid);
}
