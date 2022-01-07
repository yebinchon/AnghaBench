
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct g_sched_softc {size_t sc_mask; struct g_hash* sc_hash; } ;
struct g_hash {int dummy; } ;



__attribute__((used)) static inline struct g_hash *
g_sched_hash(struct g_sched_softc *sc, u_long key)
{

 return (&sc->sc_hash[key & sc->sc_mask]);
}
