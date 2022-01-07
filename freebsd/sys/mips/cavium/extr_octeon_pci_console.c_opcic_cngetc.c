
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opcic_softc {int sc_flags; int sc_base_addr; } ;
struct consdev {struct opcic_softc* cn_arg; } ;


 int OCT_PCI_CON_FLAG_NONBLOCK ;
 int OPCIC_FLAG_RSYS ;
 int octeon_pci_console_read (int ,int ,char*,int,int ) ;
 int opcic_rsys_cngetc (struct opcic_softc*) ;

__attribute__((used)) static int
opcic_cngetc(struct consdev *cp)
{
 struct opcic_softc *sc;
 char ch;
 int rv;

 sc = cp->cn_arg;






 rv = octeon_pci_console_read(sc->sc_base_addr, 0, &ch, 1,
     OCT_PCI_CON_FLAG_NONBLOCK);
 if (rv != 1)
  return (-1);
 return (ch);
}
