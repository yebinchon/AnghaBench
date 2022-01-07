
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beri_softc {void* control_write; void* control_read; void* data_write; void* data_read; void* data_size; int dev; int devname; } ;
typedef int phandle_t ;
typedef void* pcell_t ;


 int ENXIO ;
 int OF_getencprop (int,char*,void**,int) ;
 scalar_t__ OF_getprop (int,char*,int *,int) ;
 int OF_getproplen (int,char*) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
parse_fdt(struct beri_softc *sc)
{
 pcell_t dts_value[0];
 phandle_t node;
 int len;

 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (ENXIO);


 if (OF_getprop(ofw_bus_get_node(sc->dev), "device_name",
  &sc->devname, sizeof(sc->devname)) <= 0) {
  device_printf(sc->dev, "Can't get device_name\n");
  return (ENXIO);
 }

 if ((len = OF_getproplen(node, "data_size")) <= 0)
  return (ENXIO);
 OF_getencprop(node, "data_size", dts_value, len);
 sc->data_size = dts_value[0];

 if ((len = OF_getproplen(node, "data_read")) <= 0)
  return (ENXIO);
 OF_getencprop(node, "data_read", dts_value, len);
 sc->data_read = dts_value[0];

 if ((len = OF_getproplen(node, "data_write")) <= 0)
  return (ENXIO);
 OF_getencprop(node, "data_write", dts_value, len);
 sc->data_write = dts_value[0];

 if ((len = OF_getproplen(node, "control_read")) <= 0)
  return (ENXIO);
 OF_getencprop(node, "control_read", dts_value, len);
 sc->control_read = dts_value[0];

 if ((len = OF_getproplen(node, "control_write")) <= 0)
  return (ENXIO);
 OF_getencprop(node, "control_write", dts_value, len);
 sc->control_write = dts_value[0];

 return (0);
}
