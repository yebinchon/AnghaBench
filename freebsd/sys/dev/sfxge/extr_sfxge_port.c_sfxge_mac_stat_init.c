
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int enp; int stats_node; int dev; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_U64 ;
 unsigned int EFX_MAC_NSTATS ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char const*,int,struct sfxge_softc*,unsigned int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 char* efx_mac_stat_name (int ,unsigned int) ;
 int sfxge_mac_stat_handler ;

__attribute__((used)) static void
sfxge_mac_stat_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid_list *stat_list;
 unsigned int id;
 const char *name;

 stat_list = SYSCTL_CHILDREN(sc->stats_node);


 for (id = 0; id < EFX_MAC_NSTATS; id++) {
  name = efx_mac_stat_name(sc->enp, id);
  SYSCTL_ADD_PROC(
   ctx, stat_list,
   OID_AUTO, name, CTLTYPE_U64|CTLFLAG_RD,
   sc, id, sfxge_mac_stat_handler, "Q",
   "");
 }
}
