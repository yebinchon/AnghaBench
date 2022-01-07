
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct TYPE_5__ {int fb_bpp; int fb_depth; int fb_width; int fb_stride; uintptr_t fb_vbase; int * setblankmode; struct udl_softc* fb_priv; scalar_t__ fb_pbase; scalar_t__ fb_height; int fb_size; int fb_name; } ;
struct udl_softc {int sc_def_chip; int sc_chip; int sc_def_mode; int sc_cur_mode; int * sc_fbdev; TYPE_2__ sc_fb_info; scalar_t__ sc_fb_addr; int sc_fb_size; int sc_cmd_buf_free; struct udl_cmd_buf* sc_cmd_buf_temp; int sc_cmd_buf_pending; int * sc_xfer_head; int * sc_xfer; int sc_mtx; int sc_udev; int sc_callout; int sc_cv; } ;
struct udl_cmd_buf {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;
struct TYPE_6__ {int chip; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int DLMAX ;
 int DLUNK ;
 int DPRINTF (char*,int ) ;
 int ENXIO ;
 int MTX_DEF ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct udl_cmd_buf*,int ) ;
 size_t UDL_BULK_WRITE_0 ;
 size_t UDL_BULK_WRITE_1 ;
 int UDL_CMD_MAX_BUFFERS ;
 int UDL_LOCK (struct udl_softc*) ;
 int UDL_MAX_MODES ;
 int UDL_N_TRANSFER ;
 int UDL_UNLOCK (struct udl_softc*) ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int callout_init_mtx (int *,int *,int ) ;
 int cv_init (int *,char*) ;
 int * device_add_child (int ,char*,int) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct udl_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int,...) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int device_set_usb_desc (int ) ;
 int entry ;
 int mtx_init (int *,char*,int *,int ) ;
 int udl_callout (struct udl_softc*) ;
 int udl_config ;
 int udl_detach (int ) ;
 int udl_fb_setblankmode ;
 int udl_fbmem_alloc (struct udl_softc*) ;
 scalar_t__ udl_get_fb_height (struct udl_softc*) ;
 scalar_t__ udl_get_fb_hz (struct udl_softc*) ;
 int udl_get_fb_width (struct udl_softc*) ;
 int udl_init_chip (struct udl_softc*) ;
 int udl_init_resolution (struct udl_softc*) ;
 TYPE_3__* udl_modes ;
 int udl_select_chip (struct udl_softc*,struct usb_attach_arg*) ;
 int udl_select_mode (struct udl_softc*) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct udl_softc*,int *) ;
 int usbd_xfer_set_priv (int ,int *) ;

__attribute__((used)) static int
udl_attach(device_t dev)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(dev);
 struct udl_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;
 int i;

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "UDL lock", ((void*)0), MTX_DEF);
 cv_init(&sc->sc_cv, "UDLCV");
 callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);
 sc->sc_udev = uaa->device;

 error = usbd_transfer_setup(uaa->device, &uaa->info.bIfaceIndex,
     sc->sc_xfer, udl_config, UDL_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("usbd_transfer_setup error=%s\n", usbd_errstr(error));
  goto detach;
 }
 usbd_xfer_set_priv(sc->sc_xfer[UDL_BULK_WRITE_0], &sc->sc_xfer_head[0]);
 usbd_xfer_set_priv(sc->sc_xfer[UDL_BULK_WRITE_1], &sc->sc_xfer_head[1]);

 TAILQ_INIT(&sc->sc_xfer_head[0]);
 TAILQ_INIT(&sc->sc_xfer_head[1]);
 TAILQ_INIT(&sc->sc_cmd_buf_free);
 TAILQ_INIT(&sc->sc_cmd_buf_pending);

 sc->sc_def_chip = -1;
 sc->sc_chip = USB_GET_DRIVER_INFO(uaa);
 sc->sc_def_mode = -1;
 sc->sc_cur_mode = UDL_MAX_MODES;


 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "chipid_force",
     CTLFLAG_RWTUN, &sc->sc_def_chip, 0, "chip ID");


 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "chipid",
     CTLFLAG_RD, &sc->sc_chip, 0, "chip ID");

 if (sc->sc_def_chip > -1 && sc->sc_def_chip <= DLMAX) {
  device_printf(dev, "Forcing chip ID to 0x%04x\n", sc->sc_def_chip);
  sc->sc_chip = sc->sc_def_chip;
 }



 if (sc->sc_chip == DLUNK)
  udl_select_chip(sc, uaa);

 for (i = 0; i != UDL_CMD_MAX_BUFFERS; i++) {
  struct udl_cmd_buf *cb = &sc->sc_cmd_buf_temp[i];

  TAILQ_INSERT_TAIL(&sc->sc_cmd_buf_free, cb, entry);
 }




 error = udl_init_chip(sc);
 if (error != USB_ERR_NORMAL_COMPLETION)
  goto detach;




 udl_select_mode(sc);


 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "mode_force",
     CTLFLAG_RWTUN, &sc->sc_def_mode, 0, "mode");


 SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "mode",
     CTLFLAG_RD, &sc->sc_cur_mode, 0, "mode");

 i = sc->sc_def_mode;
 if (i > -1 && i < UDL_MAX_MODES) {
  if (udl_modes[i].chip <= sc->sc_chip) {
   device_printf(dev, "Forcing mode to %d\n", i);
   sc->sc_cur_mode = i;
  }
 }

 device_printf(dev, "Mode selected %dx%d @ %dHz\n",
     (int)udl_get_fb_width(sc),
     (int)udl_get_fb_height(sc),
     (int)udl_get_fb_hz(sc));

 udl_init_resolution(sc);


 udl_fbmem_alloc(sc);

 UDL_LOCK(sc);
 udl_callout(sc);
 UDL_UNLOCK(sc);

 sc->sc_fb_info.fb_name = device_get_nameunit(dev);
 sc->sc_fb_info.fb_size = sc->sc_fb_size;
 sc->sc_fb_info.fb_bpp = 16;
 sc->sc_fb_info.fb_depth = 16;
 sc->sc_fb_info.fb_width = udl_get_fb_width(sc);
 sc->sc_fb_info.fb_height = udl_get_fb_height(sc);
 sc->sc_fb_info.fb_stride = sc->sc_fb_info.fb_width * 2;
 sc->sc_fb_info.fb_pbase = 0;
 sc->sc_fb_info.fb_vbase = (uintptr_t)sc->sc_fb_addr;
 sc->sc_fb_info.fb_priv = sc;
 sc->sc_fb_info.setblankmode = &udl_fb_setblankmode;

 sc->sc_fbdev = device_add_child(dev, "fbd", -1);
 if (sc->sc_fbdev == ((void*)0))
  goto detach;
 if (device_probe_and_attach(sc->sc_fbdev) != 0)
  goto detach;

 return (0);

detach:
 udl_detach(dev);

 return (ENXIO);
}
