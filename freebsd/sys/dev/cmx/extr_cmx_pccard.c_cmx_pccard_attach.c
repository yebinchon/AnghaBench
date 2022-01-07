
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cmx_alloc_resources (int ) ;
 int cmx_attach (int ) ;
 int cmx_init_softc (int ) ;
 int cmx_release_resources (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cmx_pccard_attach(device_t dev)
{
 int rv = 0;
 cmx_init_softc(dev);

 if ((rv = cmx_alloc_resources(dev)) != 0) {
  device_printf(dev, "cmx_alloc_resources() failed!\n");
  cmx_release_resources(dev);
  return rv;
 }

 if ((rv = cmx_attach(dev)) != 0) {
  device_printf(dev, "cmx_attach() failed!\n");
  cmx_release_resources(dev);
  return rv;
 }

 device_printf(dev, "attached\n");
 return 0;
}
