
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_8__ {scalar_t__ state; int flags; int parent; } ;


 scalar_t__ BUS_PASS_DEFAULT ;
 int BUS_PROBE_NOMATCH (int ,TYPE_1__*) ;
 int DF_DONENOMATCH ;
 int DF_ENABLED ;
 int DF_REBID ;
 scalar_t__ DS_ALIVE ;
 int GIANT_REQUIRED ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_current_pass ;
 int * device_get_name (TYPE_1__*) ;
 int device_print_prettyname (TYPE_1__*) ;
 int device_probe_child (int ,TYPE_1__*) ;
 int devnomatch (TYPE_1__*) ;
 int printf (char*) ;

int
device_probe(device_t dev)
{
 int error;

 GIANT_REQUIRED;

 if (dev->state >= DS_ALIVE && (dev->flags & DF_REBID) == 0)
  return (-1);

 if (!(dev->flags & DF_ENABLED)) {
  if (bootverbose && device_get_name(dev) != ((void*)0)) {
   device_print_prettyname(dev);
   printf("not probed (disabled)\n");
  }
  return (-1);
 }
 if ((error = device_probe_child(dev->parent, dev)) != 0) {
  if (bus_current_pass == BUS_PASS_DEFAULT &&
      !(dev->flags & DF_DONENOMATCH)) {
   BUS_PROBE_NOMATCH(dev->parent, dev);
   devnomatch(dev);
   dev->flags |= DF_DONENOMATCH;
  }
  return (error);
 }
 return (0);
}
