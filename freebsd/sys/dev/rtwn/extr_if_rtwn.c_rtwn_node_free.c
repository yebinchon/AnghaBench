
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtwn_softc {int (* sc_node_free ) (struct ieee80211_node*) ;int ** node_list; } ;
struct rtwn_node {size_t id; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;


 size_t RTWN_MACID_UNDEFINED ;
 struct rtwn_node* RTWN_NODE (struct ieee80211_node*) ;
 int RTWN_NT_LOCK (struct rtwn_softc*) ;
 int RTWN_NT_UNLOCK (struct rtwn_softc*) ;
 int rtwn_cmd_sleepable (struct rtwn_softc*,size_t*,int,int ) ;
 int rtwn_set_media_status ;
 int stub1 (struct ieee80211_node*) ;

__attribute__((used)) static void
rtwn_node_free(struct ieee80211_node *ni)
{
 struct rtwn_softc *sc = ni->ni_ic->ic_softc;
 struct rtwn_node *un = RTWN_NODE(ni);

 RTWN_NT_LOCK(sc);
 if (un->id != RTWN_MACID_UNDEFINED) {
  sc->node_list[un->id] = ((void*)0);
  rtwn_cmd_sleepable(sc, &un->id, sizeof(un->id),
      rtwn_set_media_status);
 }
 RTWN_NT_UNLOCK(sc);

 sc->sc_node_free(ni);
}
