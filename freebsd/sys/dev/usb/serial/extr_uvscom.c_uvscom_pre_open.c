
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvscom_softc {int sc_unit_status; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int UVSCOM_NOCARD ;

__attribute__((used)) static int
uvscom_pre_open(struct ucom_softc *ucom)
{
 struct uvscom_softc *sc = ucom->sc_parent;

 DPRINTF("sc = %p\n", sc);



 if (sc->sc_unit_status & UVSCOM_NOCARD) {
  DPRINTF("no PC card!\n");
  return (ENXIO);
 }
 return (0);
}
