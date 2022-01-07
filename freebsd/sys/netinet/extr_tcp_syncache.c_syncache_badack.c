
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syncache_head {int dummy; } ;
struct syncache {int dummy; } ;
struct in_conninfo {int dummy; } ;


 int SCH_LOCK_ASSERT (struct syncache_head*) ;
 int SCH_UNLOCK (struct syncache_head*) ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ syncache_cookiesonly () ;
 int syncache_drop (struct syncache*,struct syncache_head*) ;
 struct syncache* syncache_lookup (struct in_conninfo*,struct syncache_head**) ;
 int tcps_sc_badack ;

void
syncache_badack(struct in_conninfo *inc)
{
 struct syncache *sc;
 struct syncache_head *sch;

 if (syncache_cookiesonly())
  return;
 sc = syncache_lookup(inc, &sch);
 SCH_LOCK_ASSERT(sch);
 if (sc != ((void*)0)) {
  syncache_drop(sc, sch);
  TCPSTAT_INC(tcps_sc_badack);
 }
 SCH_UNLOCK(sch);
}
