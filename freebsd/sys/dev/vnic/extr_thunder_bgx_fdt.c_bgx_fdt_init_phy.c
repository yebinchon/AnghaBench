
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct bgx {int dev; TYPE_1__* lmac; int bgx_id; } ;
typedef scalar_t__ ssize_t ;
typedef int qlm_mode ;
typedef int phy ;
typedef scalar_t__ phandle_t ;
struct TYPE_2__ {scalar_t__ phyaddr; size_t lmacid; int mac; int * phy_if_dev; } ;


 int CONN_TYPE_MAXLEN ;
 int ENXIO ;
 size_t MAX_LMAC_PER_BGX ;
 scalar_t__ MII_PHY_ANY ;
 int M_OFWPROP ;
 scalar_t__ OF_child (scalar_t__) ;
 int * OF_device_from_xref (int ) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_instance_to_package (scalar_t__) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_xref_from_node (scalar_t__) ;
 scalar_t__ bgx_fdt_find_node (struct bgx*) ;
 int bgx_fdt_get_macaddr (scalar_t__,int ) ;
 int bgx_fdt_phy_mode_match (struct bgx*,char*,scalar_t__) ;
 int bgx_fdt_phy_name_match (struct bgx*,char*,scalar_t__) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int free (char*,int ) ;

int
bgx_fdt_init_phy(struct bgx *bgx)
{
 char *node_name;
 phandle_t node, child;
 phandle_t phy, mdio;
 ssize_t len;
 uint8_t lmac;
 char qlm_mode[CONN_TYPE_MAXLEN];

 node = bgx_fdt_find_node(bgx);
 if (node == 0) {
  device_printf(bgx->dev,
      "Could not find bgx%d node in FDT\n", bgx->bgx_id);
  return (ENXIO);
 }

 lmac = 0;
 for (child = OF_child(node); child > 0; child = OF_peer(child)) {
  len = OF_getprop(child, "qlm-mode", qlm_mode, sizeof(qlm_mode));
  if (len > 0) {
   if (!bgx_fdt_phy_mode_match(bgx, qlm_mode, len)) {



    continue;
   }
  } else {
   len = OF_getprop_alloc(child, "name",
       (void **)&node_name);
   if (len <= 0) {
    continue;
   }

   if (!bgx_fdt_phy_name_match(bgx, node_name, len)) {
    free(node_name, M_OFWPROP);
    continue;
   }
   free(node_name, M_OFWPROP);
  }


  if (OF_getencprop(child, "reg", &bgx->lmac[lmac].phyaddr,
      sizeof(bgx->lmac[lmac].phyaddr)) <= 0) {
   if (bootverbose) {
    device_printf(bgx->dev,
        "Could not retrieve PHY address\n");
   }
   bgx->lmac[lmac].phyaddr = MII_PHY_ANY;
  }

  if (OF_getencprop(child, "phy-handle", &phy,
      sizeof(phy)) <= 0) {
   if (bootverbose) {
    device_printf(bgx->dev,
        "No phy-handle in PHY node. Skipping...\n");
   }
   continue;
  }
  phy = OF_instance_to_package(phy);




  mdio = OF_parent(phy);
  bgx->lmac[lmac].phy_if_dev =
      OF_device_from_xref(OF_xref_from_node(mdio));
  if (bgx->lmac[lmac].phy_if_dev == ((void*)0)) {
   if (bootverbose) {
    device_printf(bgx->dev,
        "Could not find interface to PHY\n");
   }
   continue;
  }


  bgx_fdt_get_macaddr(child, bgx->lmac[lmac].mac);

  bgx->lmac[lmac].lmacid = lmac;
  lmac++;
  if (lmac == MAX_LMAC_PER_BGX)
   break;
 }
 if (lmac == 0) {
  device_printf(bgx->dev, "Could not find matching PHY\n");
  return (ENXIO);
 }

 return (0);
}
