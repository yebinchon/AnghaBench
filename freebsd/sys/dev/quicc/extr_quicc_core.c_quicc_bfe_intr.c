
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct quicc_softc {int sc_dev; struct quicc_device* sc_device; int sc_rres; } ;
struct quicc_device {int (* qd_ih ) (int ) ;int qd_ih_arg; } ;


 int FILTER_STRAY ;
 int QUICC_REG_SIPNR_L ;
 int device_printf (int ,char*,int) ;
 int quicc_read4 (int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
quicc_bfe_intr(void *arg)
{
 struct quicc_device *qd;
 struct quicc_softc *sc = arg;
 uint32_t sipnr;

 sipnr = quicc_read4(sc->sc_rres, QUICC_REG_SIPNR_L);
 if (sipnr & 0x00f00000)
  qd = sc->sc_device;
 else
  qd = ((void*)0);

 if (qd == ((void*)0) || qd->qd_ih == ((void*)0)) {
  device_printf(sc->sc_dev, "Stray interrupt %08x\n", sipnr);
  return (FILTER_STRAY);
 }

 return ((*qd->qd_ih)(qd->qd_ih_arg));
}
