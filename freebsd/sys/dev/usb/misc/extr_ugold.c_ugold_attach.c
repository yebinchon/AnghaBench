
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_3__ info; } ;
struct ugold_softc {int* sc_iface_index; int sc_mtx; int * sc_xfer; int * sc_valid; int * sc_calib; int * sc_sensor; int sc_report_id; int sc_callout; TYPE_2__* sc_readout_msg; int sc_udev; } ;
struct sysctl_oid {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {int * pm_callback; } ;
struct TYPE_5__ {struct ugold_softc* sc; TYPE_1__ hdr; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int DPRINTF (char*,int ) ;
 int ENOMEM ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_TEMP ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int ,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 size_t UGOLD_INNER ;
 size_t UGOLD_INTR_DT ;
 int UGOLD_N_TRANSFER ;
 size_t UGOLD_OUTER ;
 int callout_init_mtx (int *,int *,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ugold_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_set_usb_desc (int ) ;
 int free (void*,int ) ;
 int hid_input ;
 int hid_report_size (void*,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ugold_config ;
 int ugold_detach (int ) ;
 int ugold_readout_msg ;
 int ugold_timeout (struct ugold_softc*) ;
 int usbd_errstr (int) ;
 int * usbd_get_iface (int ,int) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int) ;
 int usbd_set_parent_iface (int ,int,int) ;
 int usbd_transfer_setup (int ,int*,int *,int ,int ,struct ugold_softc*,int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ugold_attach(device_t dev)
{
 struct ugold_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct sysctl_oid *sensor_tree;
 uint16_t d_len;
 void *d_ptr;
 int error;
 int i;

 sc->sc_udev = uaa->device;
 sc->sc_readout_msg[0].hdr.pm_callback = &ugold_readout_msg;
 sc->sc_readout_msg[0].sc = sc;
 sc->sc_readout_msg[1].hdr.pm_callback = &ugold_readout_msg;
 sc->sc_readout_msg[1].sc = sc;
 sc->sc_iface_index[0] = uaa->info.bIfaceIndex;
 sc->sc_iface_index[1] = uaa->info.bIfaceIndex + 1;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "ugold lock", ((void*)0), MTX_DEF | MTX_RECURSE);
 callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);


 for (i = 0;; i++) {
  if (i == uaa->info.bIfaceIndex)
   continue;
  if (usbd_get_iface(uaa->device, i) == ((void*)0))
   break;

  usbd_set_parent_iface(uaa->device, i, uaa->info.bIfaceIndex);
 }


 error = usbd_req_get_hid_desc(uaa->device, ((void*)0),
     &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);

 if (error)
  goto detach;

 (void)hid_report_size(d_ptr, d_len, hid_input, &sc->sc_report_id);

 free(d_ptr, M_TEMP);

 error = usbd_transfer_setup(uaa->device,
     sc->sc_iface_index, sc->sc_xfer, ugold_config,
     UGOLD_N_TRANSFER, sc, &sc->sc_mtx);
 if (error)
  goto detach;

 sensor_tree = SYSCTL_ADD_NODE(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO, "sensors",
     CTLFLAG_RD, ((void*)0), "");

 if (sensor_tree == ((void*)0)) {
  error = ENOMEM;
  goto detach;
 }
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "inner", CTLFLAG_RD, &sc->sc_sensor[UGOLD_INNER], 0,
     "Inner temperature in microCelcius");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "inner_valid", CTLFLAG_RD, &sc->sc_valid[UGOLD_INNER], 0,
     "Inner temperature is valid");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "inner_calib", CTLFLAG_RWTUN, &sc->sc_calib[UGOLD_INNER], 0,
     "Inner calibration temperature in microCelcius");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "outer", CTLFLAG_RD, &sc->sc_sensor[UGOLD_OUTER], 0,
     "Outer temperature in microCelcius");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "outer_calib", CTLFLAG_RWTUN, &sc->sc_calib[UGOLD_OUTER], 0,
     "Outer calibration temperature in microCelcius");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(sensor_tree),
     OID_AUTO, "outer_valid", CTLFLAG_RD, &sc->sc_valid[UGOLD_OUTER], 0,
     "Outer temperature is valid");

 mtx_lock(&sc->sc_mtx);
 usbd_transfer_start(sc->sc_xfer[UGOLD_INTR_DT]);
 ugold_timeout(sc);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 DPRINTF("error=%s\n", usbd_errstr(error));
 ugold_detach(dev);
 return (error);
}
