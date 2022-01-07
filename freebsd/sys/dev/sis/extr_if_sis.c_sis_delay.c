
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int dummy; } ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int SIS_CSR ;

__attribute__((used)) static void
sis_delay(struct sis_softc *sc)
{
 int idx;

 for (idx = (300 / 33) + 1; idx > 0; idx--)
  CSR_READ_4(sc, SIS_CSR);
}
