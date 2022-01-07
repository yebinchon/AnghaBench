
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct hifn_softc {int sc_drammodel; } ;
typedef int data ;


 scalar_t__ bcmp (int*,int*,int) ;
 scalar_t__ hifn_readramaddr (struct hifn_softc*,int ,int*) ;
 scalar_t__ hifn_writeramaddr (struct hifn_softc*,int ,int*) ;

__attribute__((used)) static int
hifn_ramtype(struct hifn_softc *sc)
{
 u_int8_t data[8], dataexpect[8];
 int i;

 for (i = 0; i < sizeof(data); i++)
  data[i] = dataexpect[i] = 0x55;
 if (hifn_writeramaddr(sc, 0, data))
  return (-1);
 if (hifn_readramaddr(sc, 0, data))
  return (-1);
 if (bcmp(data, dataexpect, sizeof(data)) != 0) {
  sc->sc_drammodel = 1;
  return (0);
 }

 for (i = 0; i < sizeof(data); i++)
  data[i] = dataexpect[i] = 0xaa;
 if (hifn_writeramaddr(sc, 0, data))
  return (-1);
 if (hifn_readramaddr(sc, 0, data))
  return (-1);
 if (bcmp(data, dataexpect, sizeof(data)) != 0) {
  sc->sc_drammodel = 1;
  return (0);
 }

 return (0);
}
