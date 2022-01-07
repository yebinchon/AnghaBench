
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int addr; int rl; } ;
struct ofw_iicbus_devinfo {TYPE_1__ opd_dinfo; int opd_obdinfo; } ;
struct iicbus_softc {int lock; int dev; } ;
typedef int ssize_t ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int paddr ;
typedef int freq ;
typedef int device_t ;
typedef int compat ;


 struct iicbus_softc* IICBUS_SOFTC (int ) ;
 int IIC_FASTEST ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_device_register_xref (int ,int ) ;
 int OF_getencprop (scalar_t__,char*,int*,int) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_xref_from_node (scalar_t__) ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_add_child (int ,int *,int) ;
 int device_set_ivars (int ,struct ofw_iicbus_devinfo*) ;
 int free (struct ofw_iicbus_devinfo*,int ) ;
 int iicbus_init_frequency (int ,int) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 struct ofw_iicbus_devinfo* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ofw_bus_intr_to_rl (int ,scalar_t__,int *,int *) ;
 int resource_list_init (int *) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
ofw_iicbus_attach(device_t dev)
{
 struct iicbus_softc *sc = IICBUS_SOFTC(dev);
 struct ofw_iicbus_devinfo *dinfo;
 phandle_t child, node, root;
 pcell_t freq, paddr;
 device_t childdev;
 ssize_t compatlen;
 char compat[255];
 char *curstr;
 u_int iic_addr_8bit = 0;

 sc->dev = dev;
 mtx_init(&sc->lock, "iicbus", ((void*)0), MTX_DEF);







 node = ofw_bus_get_node(dev);
 freq = 0;
 OF_getencprop(node, "clock-frequency", &freq, sizeof(freq));
 iicbus_init_frequency(dev, freq);

 iicbus_reset(dev, IIC_FASTEST, 0, ((void*)0));

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);





 root = OF_peer(0);
 compatlen = OF_getprop(root, "compatible", compat,
    sizeof(compat));
 if (compatlen != -1) {
     for (curstr = compat; curstr < compat + compatlen;
  curstr += strlen(curstr) + 1) {
  if (strncmp(curstr, "MacRISC", 7) == 0)
      iic_addr_8bit = 1;
     }
 }




 for (child = OF_child(node); child != 0; child = OF_peer(child)) {





  if (OF_getencprop(child, "i2c-address", &paddr,
      sizeof(paddr)) == -1)
   if (OF_getencprop(child, "reg", &paddr,
       sizeof(paddr)) == -1)
    continue;





  dinfo = malloc(sizeof(struct ofw_iicbus_devinfo), M_DEVBUF,
      M_NOWAIT | M_ZERO);
  if (dinfo == ((void*)0))
   continue;






  if (iic_addr_8bit)
      dinfo->opd_dinfo.addr = paddr;
  else
      dinfo->opd_dinfo.addr = paddr << 1;

  if (ofw_bus_gen_setup_devinfo(&dinfo->opd_obdinfo, child) !=
      0) {
   free(dinfo, M_DEVBUF);
   continue;
  }

  childdev = device_add_child(dev, ((void*)0), -1);
  resource_list_init(&dinfo->opd_dinfo.rl);
  ofw_bus_intr_to_rl(childdev, child,
     &dinfo->opd_dinfo.rl, ((void*)0));
  device_set_ivars(childdev, dinfo);
 }


 OF_device_register_xref(OF_xref_from_node(node), dev);
 return (bus_generic_attach(dev));
}
