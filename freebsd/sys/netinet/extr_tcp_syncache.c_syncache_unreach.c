
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcp_seq ;
struct syncache_head {int dummy; } ;
struct syncache {scalar_t__ sc_iss; int sc_flags; int sc_rxmits; } ;
struct in_conninfo {int dummy; } ;


 int SCF_UNREACH ;
 int SCH_LOCK_ASSERT (struct syncache_head*) ;
 int SCH_UNLOCK (struct syncache_head*) ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ syncache_cookiesonly () ;
 int syncache_drop (struct syncache*,struct syncache_head*) ;
 struct syncache* syncache_lookup (struct in_conninfo*,struct syncache_head**) ;
 int tcps_sc_unreach ;

void
syncache_unreach(struct in_conninfo *inc, tcp_seq th_seq)
{
 struct syncache *sc;
 struct syncache_head *sch;

 if (syncache_cookiesonly())
  return;
 sc = syncache_lookup(inc, &sch);
 SCH_LOCK_ASSERT(sch);
 if (sc == ((void*)0))
  goto done;


 if (ntohl(th_seq) != sc->sc_iss)
  goto done;
 if ((sc->sc_flags & SCF_UNREACH) == 0 || sc->sc_rxmits < 3 + 1) {
  sc->sc_flags |= SCF_UNREACH;
  goto done;
 }
 syncache_drop(sc, sch);
 TCPSTAT_INC(tcps_sc_unreach);
done:
 SCH_UNLOCK(sch);
}
