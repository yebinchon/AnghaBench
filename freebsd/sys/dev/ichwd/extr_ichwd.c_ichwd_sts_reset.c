
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {int tco_version; } ;


 int TCO1_STS ;
 int TCO2_STS ;
 int TCO_BOOT_STS ;
 int TCO_SECOND_TO_STS ;
 int TCO_TIMEOUT ;
 int ichwd_write_tco_2 (struct ichwd_softc*,int ,int ) ;

__attribute__((used)) static __inline void
ichwd_sts_reset(struct ichwd_softc *sc)
{





 ichwd_write_tco_2(sc, TCO1_STS, TCO_TIMEOUT);




 ichwd_write_tco_2(sc, TCO2_STS, TCO_SECOND_TO_STS);
 if (sc->tco_version < 4)
  ichwd_write_tco_2(sc, TCO2_STS, TCO_BOOT_STS);
}
