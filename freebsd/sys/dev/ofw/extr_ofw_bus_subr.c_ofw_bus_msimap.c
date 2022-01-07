
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int mask ;


 int ENOENT ;
 int M_OFWPROP ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getencprop_alloc_multi (int,char*,int,void**) ;
 int free (int*,int ) ;

int
ofw_bus_msimap(phandle_t node, uint16_t pci_rid, phandle_t *msi_parent,
    uint32_t *msi_rid)
{
 pcell_t *map, mask, msi_base, rid_base, rid_length;
 ssize_t len;
 uint32_t masked_rid;
 int err, i;


 len = OF_getencprop_alloc_multi(node, "msi-map", sizeof(*map),
     (void **)&map);
 if (len < 0) {
  if (msi_parent != ((void*)0)) {
   *msi_parent = 0;
   OF_getencprop(node, "msi-parent", msi_parent,
       sizeof(*msi_parent));
  }
  if (msi_rid != ((void*)0))
   *msi_rid = pci_rid;
  return (0);
 }

 err = ENOENT;
 mask = 0xffffffff;
 OF_getencprop(node, "msi-map-mask", &mask, sizeof(mask));

 masked_rid = pci_rid & mask;
 for (i = 0; i < len; i += 4) {
  rid_base = map[i + 0];
  rid_length = map[i + 3];

  if (masked_rid < rid_base ||
      masked_rid >= (rid_base + rid_length))
   continue;

  msi_base = map[i + 2];

  if (msi_parent != ((void*)0))
   *msi_parent = map[i + 1];
  if (msi_rid != ((void*)0))
   *msi_rid = masked_rid - rid_base + msi_base;
  err = 0;
  break;
 }

 free(map, M_OFWPROP);

 return (err);
}
