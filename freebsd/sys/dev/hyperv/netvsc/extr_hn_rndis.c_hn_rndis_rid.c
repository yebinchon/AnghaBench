
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int hn_rndis_rid; } ;


 int atomic_fetchadd_int (int *,int) ;

__attribute__((used)) static __inline uint32_t
hn_rndis_rid(struct hn_softc *sc)
{
 uint32_t rid;

again:
 rid = atomic_fetchadd_int(&sc->hn_rndis_rid, 1);
 if (rid == 0)
  goto again;


 return ((rid & 0xffff) << 16);
}
