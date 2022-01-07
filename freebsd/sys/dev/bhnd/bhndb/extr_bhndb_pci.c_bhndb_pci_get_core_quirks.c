
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhndb_pci_quirk {int quirks; int core_desc; int chip_desc; } ;
struct bhndb_pci_core {struct bhndb_pci_quirk* quirks; } ;
struct bhnd_core_info {int dummy; } ;
struct bhnd_chipid {int dummy; } ;


 int BHNDB_PCI_IS_QUIRK_END (struct bhndb_pci_quirk*) ;
 int bhnd_chip_matches (struct bhnd_chipid*,int *) ;
 int bhnd_core_matches (struct bhnd_core_info*,int *) ;
 struct bhndb_pci_core* bhndb_pci_find_core (struct bhnd_core_info*) ;

__attribute__((used)) static uint32_t
bhndb_pci_get_core_quirks(struct bhnd_chipid *cid, struct bhnd_core_info *ci)
{
 struct bhndb_pci_core *entry;
 struct bhndb_pci_quirk *qtable;
 uint32_t quirks;

 quirks = 0;


 if ((entry = bhndb_pci_find_core(ci)) == ((void*)0))
  return (quirks);


 if ((qtable = entry->quirks) == ((void*)0))
  return (quirks);

 for (size_t i = 0; !BHNDB_PCI_IS_QUIRK_END(&qtable[i]); i++) {
  struct bhndb_pci_quirk *q = &qtable[i];

  if (!bhnd_chip_matches(cid, &q->chip_desc))
   continue;

  if (!bhnd_core_matches(ci, &q->core_desc))
   continue;

  quirks |= q->quirks;
 }

 return (quirks);
}
