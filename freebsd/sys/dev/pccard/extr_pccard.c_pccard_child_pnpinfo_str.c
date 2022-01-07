
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_2__ {int * cis1_info; int product; int manufacturer; } ;
struct pccard_softc {TYPE_1__ card; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int function; } ;
typedef int device_t ;


 struct pccard_ivar* PCCARD_IVAR (int ) ;
 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int SBUF_FIXEDLEN ;
 int SBUF_INCLUDENUL ;
 int devctl_safe_quote_sb (struct sbuf*,int ) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static int
pccard_child_pnpinfo_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;
 struct pccard_softc *sc = PCCARD_SOFTC(bus);
 struct sbuf sb;

 sbuf_new(&sb, buf, buflen, SBUF_FIXEDLEN | SBUF_INCLUDENUL);
 sbuf_printf(&sb, "manufacturer=0x%04x product=0x%04x "
     "cisvendor=\"", sc->card.manufacturer, sc->card.product);
 devctl_safe_quote_sb(&sb, sc->card.cis1_info[0]);
 sbuf_printf(&sb, "\" cisproduct=\"");
 devctl_safe_quote_sb(&sb, sc->card.cis1_info[1]);
 sbuf_printf(&sb, "\" function_type=%d", pf->function);
 sbuf_finish(&sb);
 sbuf_delete(&sb);

 return (0);
}
