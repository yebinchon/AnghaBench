
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_intr {int n_alloc; scalar_t__ state; } ;
struct sfxge_softc {int evq_count; int * evqs_stats_node; struct sysctl_oid* stats_node; int dev; int ev_moderation; struct sfxge_intr intr; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int OID_AUTO ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 int SFXGE_MODERATION ;
 int * SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct sfxge_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int sfxge_ev_qfini (struct sfxge_softc*,int) ;
 int sfxge_ev_qinit (struct sfxge_softc*,int) ;
 int sfxge_ev_stat_init (struct sfxge_softc*) ;
 int sfxge_int_mod_handler ;

int
sfxge_ev_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *sysctl_ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid *sysctl_tree = device_get_sysctl_tree(sc->dev);
 struct sfxge_intr *intr;
 int index;
 int rc;

 intr = &sc->intr;

 sc->evq_count = intr->n_alloc;

 KASSERT(intr->state == SFXGE_INTR_INITIALIZED,
     ("intr->state != SFXGE_INTR_INITIALIZED"));




 sc->ev_moderation = SFXGE_MODERATION;
 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
   OID_AUTO, "int_mod", CTLTYPE_UINT|CTLFLAG_RW,
   sc, 0, sfxge_int_mod_handler, "IU",
   "sfxge interrupt moderation (us)");
 for (index = 0; index < sc->evq_count; index++) {
  if ((rc = sfxge_ev_qinit(sc, index)) != 0)
   goto fail;
 }





 return (0);

fail:
 while (--index >= 0)
  sfxge_ev_qfini(sc, index);




 sc->evq_count = 0;
 return (rc);
}
