
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int obd_node; int * obd_model; int * obd_type; int * obd_compat; int * obd_name; } ;
struct ofw_spibus_devinfo {TYPE_1__ opd_obdinfo; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct ofw_spibus_devinfo*) ;
 struct ofw_spibus_devinfo* malloc (int,int ,int) ;

__attribute__((used)) static device_t
ofw_spibus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct ofw_spibus_devinfo *devi;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (child);
 devi = malloc(sizeof(struct ofw_spibus_devinfo), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (devi == ((void*)0)) {
  device_delete_child(dev, child);
  return (0);
 }





 devi->opd_obdinfo.obd_node = -1;
 devi->opd_obdinfo.obd_name = ((void*)0);
 devi->opd_obdinfo.obd_compat = ((void*)0);
 devi->opd_obdinfo.obd_type = ((void*)0);
 devi->opd_obdinfo.obd_model = ((void*)0);

 device_set_ivars(child, devi);

 return (child);
}
