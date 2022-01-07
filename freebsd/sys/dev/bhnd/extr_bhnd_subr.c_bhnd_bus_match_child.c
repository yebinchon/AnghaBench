
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
typedef int * device_t ;


 int M_TEMP ;
 scalar_t__ bhnd_core_matches (struct bhnd_core_info*,struct bhnd_core_match const*) ;
 struct bhnd_core_info bhnd_get_core_info (int *) ;
 int device_get_children (int *,int ***,int*) ;
 int free (int **,int ) ;

device_t
bhnd_bus_match_child(device_t bus, const struct bhnd_core_match *desc)
{
 device_t *devlistp;
 device_t match;
 int devcnt;
 int error;

 error = device_get_children(bus, &devlistp, &devcnt);
 if (error != 0)
  return (((void*)0));

 match = ((void*)0);
 for (int i = 0; i < devcnt; i++) {
  struct bhnd_core_info ci = bhnd_get_core_info(devlistp[i]);

  if (bhnd_core_matches(&ci, desc)) {
   match = devlistp[i];
   goto done;
  }
 }

done:
 free(devlistp, M_TEMP);
 return match;
}
