
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct udbp_softc {char* sc_name; int * sc_node; int sc_xmitq_hipri; int sc_xmitq; int sc_mtx; int sc_xfer; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int ENOMEM ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int NG_BT_MBUFQ_INIT (int *,int ) ;
 int NG_NODE_SET_PRIVATE (int *,struct udbp_softc*) ;
 int NG_NODE_UNREF (int *) ;
 int UDBP_Q_MAXLEN ;
 int UDBP_T_MAX ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 struct udbp_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 scalar_t__ ng_make_node_common (int *,int **) ;
 scalar_t__ ng_name_node (int *,char*) ;
 int ng_udbp_typestruct ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int udbp_config ;
 int udbp_detach (int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct udbp_softc*,int *) ;

__attribute__((used)) static int
udbp_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct udbp_softc *sc = device_get_softc(dev);
 int error;

 device_set_usb_desc(dev);

 snprintf(sc->sc_name, sizeof(sc->sc_name),
     "%s", device_get_nameunit(dev));

 mtx_init(&sc->sc_mtx, "udbp lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 error = usbd_transfer_setup(uaa->device, &uaa->info.bIfaceIndex,
     sc->sc_xfer, udbp_config, UDBP_T_MAX, sc, &sc->sc_mtx);
 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }
 NG_BT_MBUFQ_INIT(&sc->sc_xmitq, UDBP_Q_MAXLEN);

 NG_BT_MBUFQ_INIT(&sc->sc_xmitq_hipri, UDBP_Q_MAXLEN);



 if (ng_make_node_common(&ng_udbp_typestruct, &sc->sc_node) != 0) {
  printf("%s: Could not create Netgraph node\n",
      sc->sc_name);
  sc->sc_node = ((void*)0);
  goto detach;
 }


 if (ng_name_node(sc->sc_node, sc->sc_name) != 0) {
  printf("%s: Could not name node\n",
      sc->sc_name);
  NG_NODE_UNREF(sc->sc_node);
  sc->sc_node = ((void*)0);
  goto detach;
 }
 NG_NODE_SET_PRIVATE(sc->sc_node, sc);



 return (0);

detach:
 udbp_detach(dev);
 return (ENOMEM);
}
