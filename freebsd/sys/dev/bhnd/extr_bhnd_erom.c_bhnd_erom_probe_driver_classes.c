
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef int driver_t ;
typedef int devclass_t ;
typedef int bhnd_erom_class_t ;


 int BUS_PROBE_SPECIFIC ;
 int M_TEMP ;
 int * bhnd_driver_get_erom_class (int *) ;
 int bhnd_erom_probe (int *,struct bhnd_erom_io*,struct bhnd_chipid const*,struct bhnd_chipid*) ;
 int devclass_get_drivers (int ,int ***,int*) ;
 char* devclass_get_name (int ) ;
 int free (int **,int ) ;
 int kobj_class_compile (int *) ;
 int printf (char*,char*,int) ;

bhnd_erom_class_t *
bhnd_erom_probe_driver_classes(devclass_t bus_devclass,
    struct bhnd_erom_io *eio, const struct bhnd_chipid *hint,
    struct bhnd_chipid *cid)
{
 driver_t **drivers;
 int drv_count;
 bhnd_erom_class_t *erom_cls;
 int error, prio, result;

 erom_cls = ((void*)0);
 prio = 0;


 error = devclass_get_drivers(bus_devclass, &drivers, &drv_count);
 if (error) {
  printf("error fetching bhnd(4) drivers for %s: %d\n",
      devclass_get_name(bus_devclass), error);
  return (((void*)0));
 }


 for (int i = 0; i < drv_count; i++) {
  struct bhnd_chipid pcid;
  bhnd_erom_class_t *cls;




  cls = bhnd_driver_get_erom_class(drivers[i]);
  if (cls == ((void*)0))
   continue;

  kobj_class_compile(cls);


  result = bhnd_erom_probe(cls, eio, hint, &pcid);


  if (result > 0)
   continue;


  if (erom_cls == ((void*)0) || result > prio) {
   prio = result;

   *cid = pcid;
   erom_cls = cls;
  }


  if (result == BUS_PROBE_SPECIFIC)
   break;
 }

 free(drivers, M_TEMP);
 return (erom_cls);
}
