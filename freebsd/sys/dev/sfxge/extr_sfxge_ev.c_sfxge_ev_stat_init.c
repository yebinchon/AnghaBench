
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int enp; int stats_node; int dev; } ;
typedef int name ;


 int CTLFLAG_RD ;
 int CTLTYPE_U64 ;
 unsigned int EV_NQSTATS ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct sfxge_softc*,unsigned int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 char* efx_ev_qstat_name (int ,unsigned int) ;
 int sfxge_ev_stat_handler ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
sfxge_ev_stat_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid_list *stat_list;
 unsigned int id;
 char name[40];

 stat_list = SYSCTL_CHILDREN(sc->stats_node);

 for (id = 0; id < EV_NQSTATS; id++) {
  snprintf(name, sizeof(name), "ev_%s",
    efx_ev_qstat_name(sc->enp, id));
  SYSCTL_ADD_PROC(
   ctx, stat_list,
   OID_AUTO, name, CTLTYPE_U64|CTLFLAG_RD,
   sc, id, sfxge_ev_stat_handler, "Q",
   "");
 }
}
