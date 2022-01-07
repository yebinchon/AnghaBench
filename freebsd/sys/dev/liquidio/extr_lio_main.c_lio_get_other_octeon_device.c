
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {scalar_t__ device; scalar_t__ octeon_id; } ;


 struct octeon_device* lio_get_device (scalar_t__) ;
 int pci_get_bus (scalar_t__) ;
 int pci_get_slot (scalar_t__) ;

__attribute__((used)) static struct octeon_device *
lio_get_other_octeon_device(struct octeon_device *oct)
{
 struct octeon_device *other_oct;

 other_oct = lio_get_device(oct->octeon_id + 1);

 if ((other_oct != ((void*)0)) && other_oct->device) {
  int oct_busnum, other_oct_busnum;

  oct_busnum = pci_get_bus(oct->device);
  other_oct_busnum = pci_get_bus(other_oct->device);

  if (oct_busnum == other_oct_busnum) {
   int oct_slot, other_oct_slot;

   oct_slot = pci_get_slot(oct->device);
   other_oct_slot = pci_get_slot(other_oct->device);

   if (oct_slot == other_oct_slot)
    return (other_oct);
  }
 }
 return (((void*)0));
}
