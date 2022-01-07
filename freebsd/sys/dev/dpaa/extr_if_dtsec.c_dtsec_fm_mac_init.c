
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int h_Fm; struct dtsec_softc* h_App; int f_Exception; int f_Event; int mdioIrq; int macId; int enetMode; int baseAddr; int addr; } ;
typedef TYPE_1__ t_FmMacParams ;
typedef scalar_t__ t_Error ;
struct dtsec_softc {int sc_dev; int * sc_mach; int sc_fmh; int sc_mac_mdio_irq; int sc_eth_id; int sc_mac_enet_mode; int sc_mem; } ;
typedef int params ;


 int ENXIO ;
 scalar_t__ E_OK ;
 int FALSE ;
 int * FM_MAC_Config (TYPE_1__*) ;
 scalar_t__ FM_MAC_ConfigException (int *,int ,int ) ;
 scalar_t__ FM_MAC_ConfigResetOnInit (int *,int ) ;
 scalar_t__ FM_MAC_Init (int *) ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int dtsec_fm_mac_exception_callback ;
 int dtsec_fm_mac_free (struct dtsec_softc*) ;
 int dtsec_fm_mac_mdio_event_callback ;
 int e_FM_MAC_EX_1G_RX_CTL ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int rman_get_bushandle (int ) ;

__attribute__((used)) static int
dtsec_fm_mac_init(struct dtsec_softc *sc, uint8_t *mac)
{
 t_FmMacParams params;
 t_Error error;

 memset(&params, 0, sizeof(params));
 memcpy(&params.addr, mac, sizeof(params.addr));

 params.baseAddr = rman_get_bushandle(sc->sc_mem);
 params.enetMode = sc->sc_mac_enet_mode;
 params.macId = sc->sc_eth_id;
 params.mdioIrq = sc->sc_mac_mdio_irq;
 params.f_Event = dtsec_fm_mac_mdio_event_callback;
 params.f_Exception = dtsec_fm_mac_exception_callback;
 params.h_App = sc;
 params.h_Fm = sc->sc_fmh;

 sc->sc_mach = FM_MAC_Config(&params);
 if (sc->sc_mach == ((void*)0)) {
  device_printf(sc->sc_dev, "couldn't configure FM_MAC module.\n"
      );
  return (ENXIO);
 }

 error = FM_MAC_ConfigResetOnInit(sc->sc_mach, TRUE);
 if (error != E_OK) {
  device_printf(sc->sc_dev, "couldn't enable reset on init "
      "feature.\n");
  dtsec_fm_mac_free(sc);
  return (ENXIO);
 }


 error = FM_MAC_ConfigException(sc->sc_mach, e_FM_MAC_EX_1G_RX_CTL,
     FALSE);
 if (error != E_OK) {
  device_printf(sc->sc_dev, "couldn't disable pause frames "
   "exception.\n");
  dtsec_fm_mac_free(sc);
  return (ENXIO);
 }

 error = FM_MAC_Init(sc->sc_mach);
 if (error != E_OK) {
  device_printf(sc->sc_dev, "couldn't initialize FM_MAC module."
      "\n");
  dtsec_fm_mac_free(sc);
  return (ENXIO);
 }

 return (0);
}
