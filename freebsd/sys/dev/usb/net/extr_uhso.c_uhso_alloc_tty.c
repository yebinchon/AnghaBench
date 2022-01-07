
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhso_tty {int dummy; } ;
struct uhso_softc {int sc_ttys; TYPE_1__* sc_tty; TYPE_1__* sc_ucom; } ;
struct ucom_softc {int dummy; } ;
struct TYPE_2__ {struct uhso_softc* ht_sc; } ;


 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int UHSO_DPRINTF (int,char*,int) ;
 void* reallocf (TYPE_1__*,int,int ,int) ;

__attribute__((used)) static int
uhso_alloc_tty(struct uhso_softc *sc)
{

 sc->sc_ttys++;
 sc->sc_tty = reallocf(sc->sc_tty, sizeof(struct uhso_tty) * sc->sc_ttys,
     M_USBDEV, M_WAITOK | M_ZERO);
 if (sc->sc_tty == ((void*)0))
  return (-1);

 sc->sc_ucom = reallocf(sc->sc_ucom,
     sizeof(struct ucom_softc) * sc->sc_ttys, M_USBDEV, M_WAITOK | M_ZERO);
 if (sc->sc_ucom == ((void*)0))
  return (-1);

 sc->sc_tty[sc->sc_ttys - 1].ht_sc = sc;

 UHSO_DPRINTF(1, "Allocated TTY %d\n", sc->sc_ttys - 1);
 return (sc->sc_ttys - 1);
}
