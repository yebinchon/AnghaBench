
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
typedef int pcell_t ;
struct TYPE_4__ {int macnode; int phynode; int flags; int max_speed; int con_type; } ;
typedef TYPE_1__ mii_fdt_phy_config_t ;
typedef int device_t ;


 int MIIF_FDT_BROKEN_TURNAROUND ;
 int MIIF_FDT_COMPAT_CLAUSE45 ;
 int MIIF_FDT_EEE_BROKEN_1000KX ;
 int MIIF_FDT_EEE_BROKEN_1000T ;
 int MIIF_FDT_EEE_BROKEN_100TX ;
 int MIIF_FDT_EEE_BROKEN_10GKR ;
 int MIIF_FDT_EEE_BROKEN_10GKX4 ;
 int MIIF_FDT_EEE_BROKEN_10GT ;
 int MIIF_FDT_LANE_SWAP ;
 int MIIF_FDT_NO_LANE_SWAP ;
 int M_OFWPROP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_getencprop (int,char*,int *,int) ;
 scalar_t__ OF_hasprop (int,char*) ;
 int device_get_parent (int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mii_fdt_get_contype (int) ;
 int mii_fdt_get_phynode (int) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_node_is_compatible (int,char*) ;

mii_fdt_phy_config_t *
mii_fdt_get_config(device_t phydev)
{
 mii_fdt_phy_config_t *cfg;
 device_t miibus, macdev;
 pcell_t val;

 miibus = device_get_parent(phydev);
 macdev = device_get_parent(miibus);

 cfg = malloc(sizeof(*cfg), M_OFWPROP, M_ZERO | M_WAITOK);





 if ((cfg->macnode = ofw_bus_get_node(macdev)) == -1)
  return (cfg);

 cfg->con_type = mii_fdt_get_contype(cfg->macnode);





 if ((cfg->phynode = mii_fdt_get_phynode(cfg->macnode)) == -1)
  return (cfg);

 if (OF_getencprop(cfg->phynode, "max-speed", &val, sizeof(val)) > 0)
  cfg->max_speed = val;

 if (ofw_bus_node_is_compatible(cfg->phynode,
     "ethernet-phy-ieee802.3-c45"))
  cfg->flags |= MIIF_FDT_COMPAT_CLAUSE45;

 if (OF_hasprop(cfg->phynode, "broken-turn-around"))
  cfg->flags |= MIIF_FDT_BROKEN_TURNAROUND;
 if (OF_hasprop(cfg->phynode, "enet-phy-lane-swap"))
  cfg->flags |= MIIF_FDT_LANE_SWAP;
 if (OF_hasprop(cfg->phynode, "enet-phy-lane-no-swap"))
  cfg->flags |= MIIF_FDT_NO_LANE_SWAP;
 if (OF_hasprop(cfg->phynode, "eee-broken-100tx"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_100TX;
 if (OF_hasprop(cfg->phynode, "eee-broken-1000t"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_1000T;
 if (OF_hasprop(cfg->phynode, "eee-broken-10gt"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_10GT;
 if (OF_hasprop(cfg->phynode, "eee-broken-1000kx"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_1000KX;
 if (OF_hasprop(cfg->phynode, "eee-broken-10gkx4"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_10GKX4;
 if (OF_hasprop(cfg->phynode, "eee-broken-10gkr"))
  cfg->flags |= MIIF_FDT_EEE_BROKEN_10GKR;

 return (cfg);
}
