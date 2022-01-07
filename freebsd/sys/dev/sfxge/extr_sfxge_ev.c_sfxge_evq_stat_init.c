
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int enp; struct sysctl_oid* evqs_stats_node; int dev; } ;
struct sfxge_evq {int index; struct sfxge_softc* sc; } ;
typedef int name ;


 int CTLFLAG_RD ;
 int CTLTYPE_U64 ;
 int ENOMEM ;
 unsigned int EV_NQSTATS ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,int ,int,struct sfxge_evq*,unsigned int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int efx_ev_qstat_name (int ,unsigned int) ;
 int sfxge_evq_stat_handler ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
sfxge_evq_stat_init(struct sfxge_evq *evq)
{
 struct sfxge_softc *sc = evq->sc;
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 char name[16];
 struct sysctl_oid *evq_stats_node;
 unsigned int id;

 snprintf(name, sizeof(name), "%u", evq->index);
 evq_stats_node = SYSCTL_ADD_NODE(ctx,
      SYSCTL_CHILDREN(sc->evqs_stats_node),
      OID_AUTO, name, CTLFLAG_RD, ((void*)0), "");
 if (evq_stats_node == ((void*)0))
  return (ENOMEM);

 for (id = 0; id < EV_NQSTATS; id++) {
  SYSCTL_ADD_PROC(
   ctx, SYSCTL_CHILDREN(evq_stats_node),
   OID_AUTO, efx_ev_qstat_name(sc->enp, id),
   CTLTYPE_U64|CTLFLAG_RD,
   evq, id, sfxge_evq_stat_handler, "Q",
   "");
 }

 return (0);
}
