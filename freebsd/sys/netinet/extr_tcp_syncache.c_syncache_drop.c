
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toedev {int (* tod_syncache_removed ) (struct toedev*,int ) ;} ;
struct syncache_head {int sch_length; int sch_bucket; } ;
struct syncache {int sc_todctx; struct toedev* sc_tod; } ;


 scalar_t__ ADDED_BY_TOE (struct syncache*) ;
 int SCH_LOCK_ASSERT (struct syncache_head*) ;
 int TAILQ_REMOVE (int *,struct syncache*,int ) ;
 int TCPSTATES_DEC (int ) ;
 int TCPS_SYN_RECEIVED ;
 int sc_hash ;
 int stub1 (struct toedev*,int ) ;
 int syncache_free (struct syncache*) ;

__attribute__((used)) static void
syncache_drop(struct syncache *sc, struct syncache_head *sch)
{

 SCH_LOCK_ASSERT(sch);

 TCPSTATES_DEC(TCPS_SYN_RECEIVED);
 TAILQ_REMOVE(&sch->sch_bucket, sc, sc_hash);
 sch->sch_length--;
 syncache_free(sc);
}
