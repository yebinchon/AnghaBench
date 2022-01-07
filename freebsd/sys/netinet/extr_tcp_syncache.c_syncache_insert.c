
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toedev {int (* tod_syncache_added ) (struct toedev*,int ) ;} ;
struct syncache_head {int sch_length; scalar_t__ sch_nextc; int sch_bucket; int sch_last_overflow; } ;
struct syncache {int sc_todctx; struct toedev* sc_tod; int sc_inc; } ;
struct TYPE_2__ {int bucket_limit; } ;


 scalar_t__ ADDED_BY_TOE (struct syncache*) ;
 scalar_t__ INT_MAX ;
 int KASSERT (int,char*) ;
 int SCH_LOCK (struct syncache_head*) ;
 int SCH_UNLOCK (struct syncache_head*) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct syncache*,int ) ;
 struct syncache* TAILQ_LAST (int *,int ) ;
 int TCPSTATES_INC (int ) ;
 int TCPSTAT_INC (int ) ;
 int TCPS_SYN_RECEIVED ;
 TYPE_1__ V_tcp_syncache ;
 int sc_hash ;
 int sch_head ;
 int stub1 (struct toedev*,int ) ;
 int syncache_drop (struct syncache*,struct syncache_head*) ;
 int syncache_pause (int *) ;
 int syncache_timeout (struct syncache*,struct syncache_head*,int) ;
 int tcps_sc_added ;
 scalar_t__ ticks ;
 int time_uptime ;

__attribute__((used)) static void
syncache_insert(struct syncache *sc, struct syncache_head *sch)
{
 struct syncache *sc2;

 SCH_LOCK(sch);





 if (sch->sch_length >= V_tcp_syncache.bucket_limit) {
  KASSERT(!TAILQ_EMPTY(&sch->sch_bucket),
   ("sch->sch_length incorrect"));
  syncache_pause(&sc->sc_inc);
  sc2 = TAILQ_LAST(&sch->sch_bucket, sch_head);
  sch->sch_last_overflow = time_uptime;
  syncache_drop(sc2, sch);
 }


 TAILQ_INSERT_HEAD(&sch->sch_bucket, sc, sc_hash);
 sch->sch_length++;
 if (sch->sch_length == 1)
  sch->sch_nextc = ticks + INT_MAX;
 syncache_timeout(sc, sch, 1);

 SCH_UNLOCK(sch);

 TCPSTATES_INC(TCPS_SYN_RECEIVED);
 TCPSTAT_INC(tcps_sc_added);
}
