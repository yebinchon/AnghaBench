
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_ivars {int fdunit; int fdtype; } ;
typedef int * device_t ;


 int FDT_NONE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child (int *,char const*,int) ;
 int device_disable (int *) ;
 int device_set_ivars (int *,struct fdc_ivars*) ;
 int free (struct fdc_ivars*,int ) ;
 struct fdc_ivars* malloc (int,int ,int) ;
 scalar_t__ resource_disabled (char const*,int) ;

device_t
fdc_add_child(device_t dev, const char *name, int unit)
{
 struct fdc_ivars *ivar;
 device_t child;

 ivar = malloc(sizeof *ivar, M_DEVBUF , M_NOWAIT | M_ZERO);
 if (ivar == ((void*)0))
  return (((void*)0));
 child = device_add_child(dev, name, unit);
 if (child == ((void*)0)) {
  free(ivar, M_DEVBUF);
  return (((void*)0));
 }
 device_set_ivars(child, ivar);
 ivar->fdunit = unit;
 ivar->fdtype = FDT_NONE;
 if (resource_disabled(name, unit))
  device_disable(child);
 return (child);
}
