
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int fwver; } ;



int
r21a_iq_calib_fw_supported(struct rtwn_softc *sc)
{
 if (sc->fwver == 0x16)
  return (1);

 return (0);
}
