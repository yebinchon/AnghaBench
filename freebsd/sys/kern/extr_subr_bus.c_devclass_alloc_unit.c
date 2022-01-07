
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * device_t ;
typedef TYPE_1__* devclass_t ;
struct TYPE_4__ {char* name; int maxunit; int ** devices; } ;


 int BUS_HINT_DEVICE_UNIT (int ,int *,char*,int*) ;
 int DEVCLANAME (TYPE_1__*) ;
 int EEXIST ;
 int ENOMEM ;
 int MINALLOCSIZE ;
 int M_BUS ;
 int M_NOWAIT ;
 int PDEBUG (char*) ;
 int bcopy (int **,int **,int) ;
 scalar_t__ bootverbose ;
 int bzero (int **,int) ;
 int device_get_parent (int *) ;
 int free (int **,int ) ;
 int ** malloc (int,int ,int ) ;
 int printf (char*,char*,char*,int) ;
 scalar_t__ resource_string_value (char*,int,char*,char const**) ;
 int roundup (int,int) ;

__attribute__((used)) static int
devclass_alloc_unit(devclass_t dc, device_t dev, int *unitp)
{
 const char *s;
 int unit = *unitp;

 PDEBUG(("unit %d in devclass %s", unit, DEVCLANAME(dc)));


 if (unit == -1)
  BUS_HINT_DEVICE_UNIT(device_get_parent(dev), dev, dc->name,
      &unit);



 if (unit != -1) {
  if (unit >= 0 && unit < dc->maxunit &&
      dc->devices[unit] != ((void*)0)) {
   if (bootverbose)
    printf("%s: %s%d already exists; skipping it\n",
        dc->name, dc->name, *unitp);
   return (EEXIST);
  }
 } else {

  unit = 0;
  for (unit = 0;; unit++) {

   if (resource_string_value(dc->name, unit, "at", &s) ==
       0)
    continue;


   if (unit < dc->maxunit && dc->devices[unit] != ((void*)0))
    continue;

   break;
  }
 }






 if (unit >= dc->maxunit) {
  device_t *newlist, *oldlist;
  int newsize;

  oldlist = dc->devices;
  newsize = roundup((unit + 1), MINALLOCSIZE / sizeof(device_t));
  newlist = malloc(sizeof(device_t) * newsize, M_BUS, M_NOWAIT);
  if (!newlist)
   return (ENOMEM);
  if (oldlist != ((void*)0))
   bcopy(oldlist, newlist, sizeof(device_t) * dc->maxunit);
  bzero(newlist + dc->maxunit,
      sizeof(device_t) * (newsize - dc->maxunit));
  dc->devices = newlist;
  dc->maxunit = newsize;
  if (oldlist != ((void*)0))
   free(oldlist, M_BUS);
 }
 PDEBUG(("now: unit %d in devclass %s", unit, DEVCLANAME(dc)));

 *unitp = unit;
 return (0);
}
