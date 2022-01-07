
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int ENXIO ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,char*,int ) ;

int
isab_attach(device_t dev)
{
 device_t child;

 child = device_add_child(dev, "isa", 0);
 if (child != ((void*)0))
  return (bus_generic_attach(dev));
 return (ENXIO);
}
