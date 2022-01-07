
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {int tco_version; } ;


 int TCO_RLD ;
 int ichwd_write_tco_1 (struct ichwd_softc*,int ,int) ;
 int ichwd_write_tco_2 (struct ichwd_softc*,int ,int) ;

__attribute__((used)) static __inline void
ichwd_tmr_reload(struct ichwd_softc *sc)
{
 if (sc->tco_version == 1)
  ichwd_write_tco_1(sc, TCO_RLD, 1);
 else
  ichwd_write_tco_2(sc, TCO_RLD, 1);
}
