
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int M_XENSTORE ;
 int XST_NIL ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int free (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ xen_disable_pv_disks ;
 scalar_t__ xen_hvm_domain () ;
 int xenbus_get_node (int ) ;
 int xenbus_get_type (int ) ;
 int xs_read (int ,int ,char*,int *,void**) ;

__attribute__((used)) static int
xbd_probe(device_t dev)
{
 if (strcmp(xenbus_get_type(dev), "vbd") != 0)
  return (ENXIO);

 if (xen_hvm_domain() && xen_disable_pv_disks != 0)
  return (ENXIO);

 if (xen_hvm_domain()) {
  int error;
  char *type;
  error = xs_read(XST_NIL, xenbus_get_node(dev),
      "device-type", ((void*)0), (void **) &type);
  if (error)
   return (ENXIO);

  if (strncmp(type, "cdrom", 5) == 0) {
   free(type, M_XENSTORE);
   return (ENXIO);
  }
  free(type, M_XENSTORE);
 }

 device_set_desc(dev, "Virtual Block Device");
 device_quiet(dev);
 return (0);
}
