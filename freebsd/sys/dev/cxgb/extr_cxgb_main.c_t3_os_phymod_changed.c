
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* ifm_cur; } ;
struct TYPE_5__ {int modtype; } ;
struct port_info {int ifp; TYPE_1__ media; TYPE_2__ phy; } ;
struct adapter {struct port_info* port; } ;
struct TYPE_6__ {int ifm_data; } ;


 int ARRAY_SIZE (char const**) ;
 int KASSERT (int,char*) ;
 int cxgb_build_medialist (struct port_info*) ;
 int if_printf (int ,char*,...) ;
 int phy_modtype_none ;

void t3_os_phymod_changed(struct adapter *adap, int port_id)
{
 static const char *mod_str[] = {
  ((void*)0), "SR", "LR", "LRM", "TWINAX", "TWINAX-L", "unknown"
 };
 struct port_info *pi = &adap->port[port_id];
 int mod = pi->phy.modtype;

 if (mod != pi->media.ifm_cur->ifm_data)
  cxgb_build_medialist(pi);

 if (mod == phy_modtype_none)
  if_printf(pi->ifp, "PHY module unplugged\n");
 else {
  KASSERT(mod < ARRAY_SIZE(mod_str),
   ("invalid PHY module type %d", mod));
  if_printf(pi->ifp, "%s PHY module inserted\n", mod_str[mod]);
 }
}
