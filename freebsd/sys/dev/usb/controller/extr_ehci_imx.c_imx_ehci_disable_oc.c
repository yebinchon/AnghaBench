
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usbmprops ;
struct imx_ehci_softc {int dev; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int * OF_device_from_xref (int) ;
 int OF_getencprop (int ,char*,int*,int) ;
 int USBNC_OVER_CUR_DIS ;
 int device_printf (int ,char*) ;
 int imx_usbmisc_set_ctrl (int *,int,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static void
imx_ehci_disable_oc(struct imx_ehci_softc *sc)
{
 device_t usbmdev;
 pcell_t usbmprops[2];
 phandle_t node;
 ssize_t size;
 int index;


 node = ofw_bus_get_node(sc->dev);
 size = OF_getencprop(node, "fsl,usbmisc", usbmprops,
     sizeof(usbmprops));
 if (size < sizeof(usbmprops)) {
  device_printf(sc->dev, "failed to retrieve fsl,usbmisc "
     "property, cannot disable overcurrent protection");
  return;
 }

 usbmdev = OF_device_from_xref(usbmprops[0]);
 if (usbmdev == ((void*)0)) {
  device_printf(sc->dev, "usbmisc device not found, "
      "cannot disable overcurrent protection");
  return;
 }

 index = usbmprops[1];
 imx_usbmisc_set_ctrl(usbmdev, index, USBNC_OVER_CUR_DIS);
}
