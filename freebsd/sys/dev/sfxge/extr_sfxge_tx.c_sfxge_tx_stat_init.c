
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int stats_node; int dev; } ;
struct TYPE_3__ {int name; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_ULONG ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,int ,int,struct sfxge_softc*,unsigned int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 unsigned int nitems (TYPE_1__*) ;
 int sfxge_tx_stat_handler ;
 TYPE_1__* sfxge_tx_stats ;

__attribute__((used)) static void
sfxge_tx_stat_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid_list *stat_list;
 unsigned int id;

 stat_list = SYSCTL_CHILDREN(sc->stats_node);

 for (id = 0; id < nitems(sfxge_tx_stats); id++) {
  SYSCTL_ADD_PROC(
   ctx, stat_list,
   OID_AUTO, sfxge_tx_stats[id].name,
   CTLTYPE_ULONG|CTLFLAG_RD,
   sc, id, sfxge_tx_stat_handler, "LU",
   "");
 }
}
