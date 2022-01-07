
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct xhci_trb {int dummy; } ;
struct pci_xhci_softc {int * portregs; } ;
struct pci_xhci_portregs {int portsc; int portpmsc; int porthlpmc; } ;


 int DPRINTF (char*) ;
 int WPRINTF (char*) ;
 int * XHCI_DEVINST_PTR (struct pci_xhci_softc*,int) ;
 int XHCI_MAX_DEVS ;
 int XHCI_PORTREGS_PORT0 ;
 int XHCI_PORTREGS_SETSZ ;
 struct pci_xhci_portregs* XHCI_PORTREG_PTR (struct pci_xhci_softc*,int) ;
 int XHCI_PS_CAS ;
 int XHCI_PS_CCS ;
 int XHCI_PS_CEC ;
 int XHCI_PS_CSC ;
 int XHCI_PS_DR ;
 int XHCI_PS_LWS ;
 int XHCI_PS_OCA ;
 int XHCI_PS_OCC ;
 int XHCI_PS_PEC ;
 int XHCI_PS_PED ;
 int XHCI_PS_PIC_MASK ;
 int XHCI_PS_PLC ;
 int XHCI_PS_PLS_GET (int) ;
 int XHCI_PS_PLS_MASK ;
 int XHCI_PS_PLS_SET (int ) ;
 int XHCI_PS_PP ;
 int XHCI_PS_PR ;
 int XHCI_PS_PRC ;
 int XHCI_PS_SPEED_MASK ;
 int XHCI_PS_WPR ;
 int XHCI_PS_WRC ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int XHCI_TRB_EVENT_PORT_STS_CHANGE ;
 int assert (int) ;
 int pci_xhci_insert_event (struct pci_xhci_softc*,struct xhci_trb*,int) ;
 int pci_xhci_reset_port (struct pci_xhci_softc*,int,int) ;
 int pci_xhci_set_evtrb (struct xhci_trb*,int,int ,int ) ;

__attribute__((used)) static void
pci_xhci_portregs_write(struct pci_xhci_softc *sc, uint64_t offset,
    uint64_t value)
{
 struct xhci_trb evtrb;
 struct pci_xhci_portregs *p;
 int port;
 uint32_t oldpls, newpls;

 if (sc->portregs == ((void*)0))
  return;

 port = (offset - XHCI_PORTREGS_PORT0) / XHCI_PORTREGS_SETSZ;
 offset = (offset - XHCI_PORTREGS_PORT0) % XHCI_PORTREGS_SETSZ;

 DPRINTF(("pci_xhci: portregs wr offset 0x%lx, port %u: 0x%lx\r\n",
         offset, port, value));

 assert(port >= 0);

 if (port > XHCI_MAX_DEVS) {
  DPRINTF(("pci_xhci: portregs_write port %d > ndevices\r\n",
      port));
  return;
 }

 if (XHCI_DEVINST_PTR(sc, port) == ((void*)0)) {
  DPRINTF(("pci_xhci: portregs_write to unattached port %d\r\n",
       port));
 }

 p = XHCI_PORTREG_PTR(sc, port);
 switch (offset) {
 case 0:

  if (value & (XHCI_PS_PR | XHCI_PS_WPR)) {
   pci_xhci_reset_port(sc, port, value & XHCI_PS_WPR);
   break;
  }

  if ((p->portsc & XHCI_PS_PP) == 0) {
   WPRINTF(("pci_xhci: portregs_write to unpowered "
            "port %d\r\n", port));
   break;
  }


  oldpls = XHCI_PS_PLS_GET(p->portsc);
  newpls = XHCI_PS_PLS_GET(value);

  p->portsc &= XHCI_PS_PED | XHCI_PS_PLS_MASK |
               XHCI_PS_SPEED_MASK | XHCI_PS_PIC_MASK;

  if (XHCI_DEVINST_PTR(sc, port))
   p->portsc |= XHCI_PS_CCS;

  p->portsc |= (value &
                ~(XHCI_PS_OCA |
                  XHCI_PS_PR |
           XHCI_PS_PED |
           XHCI_PS_PLS_MASK |
           XHCI_PS_SPEED_MASK |
           XHCI_PS_PIC_MASK |
           XHCI_PS_LWS | XHCI_PS_DR | XHCI_PS_WPR));


  p->portsc &= ~(value &
                 (XHCI_PS_CSC |
                  XHCI_PS_PEC |
                  XHCI_PS_WRC |
                  XHCI_PS_OCC |
                  XHCI_PS_PRC |
                  XHCI_PS_PLC |
                  XHCI_PS_CEC |
                  XHCI_PS_CAS));


  if (value & XHCI_PS_PED)
   DPRINTF(("Disable port %d request\r\n", port));

  if (!(value & XHCI_PS_LWS))
   break;

  DPRINTF(("Port new PLS: %d\r\n", newpls));
  switch (newpls) {
  case 0:
  case 3:
   if (oldpls != newpls) {
    p->portsc &= ~XHCI_PS_PLS_MASK;
    p->portsc |= XHCI_PS_PLS_SET(newpls) |
                 XHCI_PS_PLC;

    if (oldpls != 0 && newpls == 0) {
     pci_xhci_set_evtrb(&evtrb, port,
         XHCI_TRB_ERROR_SUCCESS,
         XHCI_TRB_EVENT_PORT_STS_CHANGE);

     pci_xhci_insert_event(sc, &evtrb, 1);
    }
   }
   break;

  default:
   DPRINTF(("Unhandled change port %d PLS %u\r\n",
            port, newpls));
   break;
  }
  break;
 case 4:

  p->portpmsc = value;
  break;
 case 8:

  DPRINTF(("pci_xhci attempted write to PORTLI, port %d\r\n",
          port));
  break;
 case 12:




  p->porthlpmc = value;
  break;
 }
}
