
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obd_name; } ;
struct vdevice_devinfo {TYPE_1__ mdi_obdinfo; int mdi_resources; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int FALSE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_xref_from_node (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct vdevice_devinfo*) ;
 int free (struct vdevice_devinfo*,int ) ;
 struct vdevice_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_1__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_1__*,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int ofw_bus_intr_to_rl (int *,scalar_t__,int *,int *) ;
 int powerpc_register_pic (int ,int ,int,int,int ) ;
 int resource_list_init (int *) ;
 int root_pic ;

__attribute__((used)) static int
vdevice_attach(device_t dev)
{
 phandle_t root, child;
 device_t cdev;
 struct vdevice_devinfo *dinfo;

 root = ofw_bus_get_node(dev);


 powerpc_register_pic(root_pic, OF_xref_from_node(root),
     1 << 24 , 1 , FALSE);

 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);

                if (ofw_bus_gen_setup_devinfo(&dinfo->mdi_obdinfo,
      child) != 0) {
                        free(dinfo, M_DEVBUF);
                        continue;
                }
  resource_list_init(&dinfo->mdi_resources);

  ofw_bus_intr_to_rl(dev, child, &dinfo->mdi_resources, ((void*)0));

                cdev = device_add_child(dev, ((void*)0), -1);
                if (cdev == ((void*)0)) {
                        device_printf(dev, "<%s>: device_add_child failed\n",
                            dinfo->mdi_obdinfo.obd_name);
                        ofw_bus_gen_destroy_devinfo(&dinfo->mdi_obdinfo);
                        free(dinfo, M_DEVBUF);
                        continue;
                }
  device_set_ivars(cdev, dinfo);
 }

 return (bus_generic_attach(dev));
}
