
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int bufferSize; int f_PutBuf; int f_GetBuf; struct dtsec_softc* h_BufferPool; } ;
struct TYPE_9__ {TYPE_4__ rxPoolParams; int f_RxStore; int dataMemAttributes; int dataMemId; int liodnOffset; int h_FmMuram; } ;
struct TYPE_7__ {TYPE_3__ imRxTxParams; } ;
struct TYPE_8__ {TYPE_1__ specificParams; struct dtsec_softc* h_App; int f_Exception; int liodnBase; int independentModeEnable; int portId; int portType; int h_Fm; scalar_t__ baseAddr; } ;
typedef TYPE_2__ t_FmPortParams ;
typedef TYPE_3__ t_FmPortImRxTxParams ;
typedef scalar_t__ t_Error ;
typedef TYPE_4__ t_BufferPoolInfo ;
struct dtsec_softc {scalar_t__ sc_port_rx_hw_id; int sc_dev; int * sc_rxph; int sc_muramh; int sc_eth_id; int sc_eth_dev_type; int sc_fmh; scalar_t__ sc_fm_base; } ;
typedef int params ;


 int ENXIO ;
 scalar_t__ E_OK ;
 int FM_PORT_BUFFER_SIZE ;
 int * FM_PORT_Config (TYPE_2__*) ;
 int FM_PORT_Free (int *) ;
 scalar_t__ FM_PORT_Init (int *) ;
 int FM_PORT_LIODN_BASE ;
 int FM_PORT_LIODN_OFFSET ;
 int FM_PORT_MEM_ATTR ;
 int FM_PORT_MEM_ID ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int dtsec_fm_port_rx_exception_callback ;
 int dtsec_fm_port_rx_type (int ) ;
 int dtsec_im_fm_port_rx_callback ;
 int dtsec_im_fm_port_rx_get_buf ;
 int dtsec_im_fm_port_rx_put_buf ;
 int memset (TYPE_2__*,int ,int) ;

int
dtsec_im_fm_port_rx_init(struct dtsec_softc *sc, int unit)
{
 t_FmPortParams params;
 t_BufferPoolInfo *pool_params;
 t_FmPortImRxTxParams *im_params;
 t_Error error;

 memset(&params, 0, sizeof(params));

 params.baseAddr = sc->sc_fm_base + sc->sc_port_rx_hw_id;
 params.h_Fm = sc->sc_fmh;
 params.portType = dtsec_fm_port_rx_type(sc->sc_eth_dev_type);
 params.portId = sc->sc_eth_id;
 params.independentModeEnable = TRUE;
 params.liodnBase = FM_PORT_LIODN_BASE;
 params.f_Exception = dtsec_fm_port_rx_exception_callback;
 params.h_App = sc;

 im_params = &params.specificParams.imRxTxParams;
 im_params->h_FmMuram = sc->sc_muramh;
 im_params->liodnOffset = FM_PORT_LIODN_OFFSET;
 im_params->dataMemId = FM_PORT_MEM_ID;
 im_params->dataMemAttributes = FM_PORT_MEM_ATTR;
 im_params->f_RxStore = dtsec_im_fm_port_rx_callback;

 pool_params = &params.specificParams.imRxTxParams.rxPoolParams;
 pool_params->h_BufferPool = sc;
 pool_params->f_GetBuf = dtsec_im_fm_port_rx_get_buf;
 pool_params->f_PutBuf = dtsec_im_fm_port_rx_put_buf;
 pool_params->bufferSize = FM_PORT_BUFFER_SIZE;

 sc->sc_rxph = FM_PORT_Config(&params);
 if (sc->sc_rxph == ((void*)0)) {
  device_printf(sc->sc_dev, "couldn't configure FM Port RX.\n");
  return (ENXIO);
 }

 error = FM_PORT_Init(sc->sc_rxph);
 if (error != E_OK) {
  device_printf(sc->sc_dev, "couldn't initialize FM Port RX.\n");
  FM_PORT_Free(sc->sc_rxph);
  return (ENXIO);
 }

 if (bootverbose)
  device_printf(sc->sc_dev, "RX hw port 0x%02x initialized.\n",
      sc->sc_port_rx_hw_id);

 return (0);
}
