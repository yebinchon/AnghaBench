
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int vtmmio_reset (int ) ;

__attribute__((used)) static void
vtmmio_stop(device_t dev)
{

 vtmmio_reset(device_get_softc(dev));
}
