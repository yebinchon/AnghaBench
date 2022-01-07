
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dummy; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int DC_BUSCTL ;

__attribute__((used)) static void
dc_delay(struct dc_softc *sc)
{
 int idx;

 for (idx = (300 / 33) + 1; idx > 0; idx--)
  CSR_READ_4(sc, DC_BUSCTL);
}
