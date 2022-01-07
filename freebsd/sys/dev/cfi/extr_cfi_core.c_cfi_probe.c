
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cfi_softc {int sc_width; int sc_cmdset; unsigned int sc_size; int * sc_res; scalar_t__ sc_rid; int sc_handle; int sc_tag; int sc_dev; } ;
typedef int device_t ;
typedef int desc ;


 scalar_t__ CFI_QRY_IDENT ;
 scalar_t__ CFI_QRY_IFACE ;
 scalar_t__ CFI_QRY_SIZE ;
 scalar_t__ CFI_QRY_VEND ;






 int EINVAL ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 char* cfi_fmtsize (unsigned int) ;
 int cfi_read_qry (struct cfi_softc*,scalar_t__) ;
 struct cfi_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

int
cfi_probe(device_t dev)
{
 char desc[80];
 struct cfi_softc *sc;
 char *vend_str;
 int error;
 uint16_t iface, vend;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_rid = 0;
 sc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0))
  return (ENXIO);

 sc->sc_tag = rman_get_bustag(sc->sc_res);
 sc->sc_handle = rman_get_bushandle(sc->sc_res);

 if (sc->sc_width == 0) {
  sc->sc_width = 1;
  while (sc->sc_width <= 4) {
   if (cfi_read_qry(sc, CFI_QRY_IDENT) == 'Q')
    break;
   sc->sc_width <<= 1;
  }
 } else if (cfi_read_qry(sc, CFI_QRY_IDENT) != 'Q') {
  error = ENXIO;
  goto out;
 }
 if (sc->sc_width > 4) {
  error = ENXIO;
  goto out;
 }


 if (cfi_read_qry(sc, CFI_QRY_IDENT + 1) != 'R' ||
     cfi_read_qry(sc, CFI_QRY_IDENT + 2) != 'Y') {
  error = ENXIO;
  goto out;
 }


 vend = cfi_read_qry(sc, CFI_QRY_VEND) |
     (cfi_read_qry(sc, CFI_QRY_VEND + 1) << 8);

 sc->sc_cmdset = vend;

 switch (vend) {
 case 133:
 case 132:
  vend_str = "AMD/Fujitsu";
  break;
 case 131:
  vend_str = "Intel/Sharp";
  break;
 case 130:
  vend_str = "Intel";
  break;
 case 129:
 case 128:
  vend_str = "Mitsubishi";
  break;
 default:
  vend_str = "Unknown vendor";
  break;
 }


 sc->sc_size = 1U << cfi_read_qry(sc, CFI_QRY_SIZE);


 iface = cfi_read_qry(sc, CFI_QRY_IFACE) |
     (cfi_read_qry(sc, CFI_QRY_IFACE + 1) << 8);






 iface++;

 error = (iface & sc->sc_width) ? 0 : EINVAL;
 if (error)
  goto out;

 snprintf(desc, sizeof(desc), "%s - %s", vend_str,
     cfi_fmtsize(sc->sc_size));
 device_set_desc_copy(dev, desc);

 out:
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_res);
 return (error);
}
