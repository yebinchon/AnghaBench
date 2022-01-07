
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ata_chip_id {int dummy; } ;
typedef int device_t ;


 int M_TEMP ;
 struct ata_chip_id* ata_match_chip (int ,struct ata_chip_id const*) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int device_get_parent (int ) ;
 int free (int *,int ) ;
 int pci_get_slot (int ) ;

const struct ata_chip_id *
ata_find_chip(device_t dev, const struct ata_chip_id *index, int slot)
{
    const struct ata_chip_id *idx;
    device_t *children;
    int nchildren, i;
    uint8_t s;

    if (device_get_children(device_get_parent(dev), &children, &nchildren))
 return (((void*)0));

    for (i = 0; i < nchildren; i++) {
 s = pci_get_slot(children[i]);
 if ((slot >= 0 && s == slot) || (slot < 0 && s <= -slot)) {
     idx = ata_match_chip(children[i], index);
     if (idx != ((void*)0)) {
  free(children, M_TEMP);
  return (idx);
     }
 }
    }
    free(children, M_TEMP);
    return (((void*)0));
}
