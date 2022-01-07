
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int manufacturer; int product; int ** cis1_info; } ;
struct pccard_softc {TYPE_1__ card; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int function; int number; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pccard_probe_nomatch(device_t bus, device_t child)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;
 struct pccard_softc *sc = PCCARD_SOFTC(bus);
 int i;

 device_printf(bus, "<unknown card>");
 printf(" (manufacturer=0x%04x, product=0x%04x, function_type=%d) "
     "at function %d\n", sc->card.manufacturer, sc->card.product,
     pf->function, pf->number);
 device_printf(bus, "   CIS info: ");
 for (i = 0; sc->card.cis1_info[i] != ((void*)0) && i < 4; i++)
  printf("%s%s", i > 0 ? ", " : "", sc->card.cis1_info[i]);
 printf("\n");
 return;
}
