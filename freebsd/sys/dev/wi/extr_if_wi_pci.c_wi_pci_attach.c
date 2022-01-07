
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct wi_softc {scalar_t__ wi_bus_type; int * mem; void* wi_bmemhandle; void* wi_bmemtag; int mem_rid; int * local; int local_rid; void* wi_localhandle; void* wi_localtag; } ;
typedef int device_t ;


 int CSM_READ_1 (struct wi_softc*,int ) ;
 int CSM_WRITE_1 (struct wi_softc*,int ,int) ;
 int CSR_READ_2 (struct wi_softc*,int ) ;
 int CSR_WRITE_2 (struct wi_softc*,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ WI_BUS_PCI_NATIVE ;
 int WI_CMD_BUSY ;
 int WI_COMMAND ;
 int WI_COR_OFFSET ;
 int WI_COR_VALUE ;
 int WI_EVENT_ACK ;
 int WI_HFA384X_SWSUPPORT0_OFF ;
 int WI_INT_EN ;
 int WI_LOCAL_INTCSR ;
 int WI_LOCAL_INTEN ;
 int WI_PCICOR_OFF ;
 int WI_PCICOR_RESET ;
 int WI_PCI_IORES ;
 int WI_PCI_LMEMRES ;
 int WI_PCI_LOCALRES ;
 int WI_PCI_MEMRES ;
 int WI_PRISM2STA_MAGIC ;
 void* bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_space_read_4 (void*,void*,int ) ;
 int bus_space_write_4 (void*,void*,int ,int ) ;
 struct wi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 int wi_alloc (int ,int ) ;
 int wi_attach (int ) ;
 int wi_free (int ) ;

__attribute__((used)) static int
wi_pci_attach(device_t dev)
{
 struct wi_softc *sc;
 u_int32_t command;
 u_int16_t reg;
 int error;
 int timeout;

 sc = device_get_softc(dev);

 if (sc->wi_bus_type != WI_BUS_PCI_NATIVE) {
  error = wi_alloc(dev, WI_PCI_IORES);
  if (error)
   return (error);


  CSR_WRITE_2(sc, WI_INT_EN, 0);
  CSR_WRITE_2(sc, WI_EVENT_ACK, 0xFFFF);


  sc->local_rid = WI_PCI_LOCALRES;
  sc->local = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
      &sc->local_rid, RF_ACTIVE);
  sc->wi_localtag = rman_get_bustag(sc->local);
  sc->wi_localhandle = rman_get_bushandle(sc->local);
  command = bus_space_read_4(sc->wi_localtag, sc->wi_localhandle,
      WI_LOCAL_INTCSR);
  command |= WI_LOCAL_INTEN;
  bus_space_write_4(sc->wi_localtag, sc->wi_localhandle,
      WI_LOCAL_INTCSR, command);
  bus_release_resource(dev, SYS_RES_IOPORT, sc->local_rid,
      sc->local);
  sc->local = ((void*)0);

  sc->mem_rid = WI_PCI_MEMRES;
  sc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->mem_rid, RF_ACTIVE);
  if (sc->mem == ((void*)0)) {
   device_printf(dev, "couldn't allocate memory\n");
   wi_free(dev);
   return (ENXIO);
  }
  sc->wi_bmemtag = rman_get_bustag(sc->mem);
  sc->wi_bmemhandle = rman_get_bushandle(sc->mem);







  CSM_WRITE_1(sc, WI_COR_OFFSET, WI_COR_VALUE);
  reg = CSM_READ_1(sc, WI_COR_OFFSET);
  if (reg != WI_COR_VALUE) {
   device_printf(dev, "CSM_READ_1(WI_COR_OFFSET) "
       "wanted %d, got %d\n", WI_COR_VALUE, reg);
   wi_free(dev);
   return (ENXIO);
  }
 } else {
  error = wi_alloc(dev, WI_PCI_LMEMRES);
  if (error)
   return (error);

  CSR_WRITE_2(sc, WI_PCICOR_OFF, WI_PCICOR_RESET);
  DELAY(250000);

  CSR_WRITE_2(sc, WI_PCICOR_OFF, 0x0000);
  DELAY(500000);

  timeout=2000000;
  while ((--timeout > 0) &&
      (CSR_READ_2(sc, WI_COMMAND) & WI_CMD_BUSY))
   DELAY(10);

  if (timeout == 0) {
   device_printf(dev, "couldn't reset prism pci core.\n");
   wi_free(dev);
   return(ENXIO);
  }
 }

 CSR_WRITE_2(sc, WI_HFA384X_SWSUPPORT0_OFF, WI_PRISM2STA_MAGIC);
 reg = CSR_READ_2(sc, WI_HFA384X_SWSUPPORT0_OFF);
 if (reg != WI_PRISM2STA_MAGIC) {
  device_printf(dev,
      "CSR_READ_2(WI_HFA384X_SWSUPPORT0_OFF) "
      "wanted %d, got %d\n", WI_PRISM2STA_MAGIC, reg);
  wi_free(dev);
  return (ENXIO);
 }

 error = wi_attach(dev);
 if (error != 0)
  wi_free(dev);
 return (error);
}
