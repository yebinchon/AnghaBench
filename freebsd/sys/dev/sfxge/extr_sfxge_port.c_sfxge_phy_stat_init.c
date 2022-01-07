
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int enp; int stats_node; int dev; } ;
struct TYPE_2__ {unsigned int enc_phy_stat_mask; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_UINT ;
 unsigned int EFX_PHY_NSTATS ;
 unsigned int EFX_PHY_STAT_OUI ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char const*,int,struct sfxge_softc*,unsigned int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 TYPE_1__* efx_nic_cfg_get (int ) ;
 char* efx_phy_stat_name (int ,unsigned int) ;
 int sfxge_phy_stat_handler ;

__attribute__((used)) static void
sfxge_phy_stat_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid_list *stat_list;
 unsigned int id;
 const char *name;
 uint64_t stat_mask = efx_nic_cfg_get(sc->enp)->enc_phy_stat_mask;

 stat_list = SYSCTL_CHILDREN(sc->stats_node);


 for (id = 0; id < EFX_PHY_NSTATS; id++) {
  if (!(stat_mask & ((uint64_t)1 << id)))
   continue;
  name = efx_phy_stat_name(sc->enp, id);
  SYSCTL_ADD_PROC(
   ctx, stat_list,
   OID_AUTO, name, CTLTYPE_UINT|CTLFLAG_RD,
   sc, id, sfxge_phy_stat_handler,
   id == EFX_PHY_STAT_OUI ? "IX" : "IU",
   "");
 }
}
