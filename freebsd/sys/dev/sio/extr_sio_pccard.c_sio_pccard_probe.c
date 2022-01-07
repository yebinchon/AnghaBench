
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCCARD_FUNCTION_SERIAL ;
 scalar_t__ PCCARD_FUNCTION_UNSPEC ;
 int pccard_get_function (int ,scalar_t__*) ;

__attribute__((used)) static int
sio_pccard_probe(device_t dev)
{
 int error = 0;
 u_int32_t fcn = PCCARD_FUNCTION_UNSPEC;

 error = pccard_get_function(dev, &fcn);
 if (error != 0)
  return (error);






 if (fcn == PCCARD_FUNCTION_SERIAL)
  return (-100);
 return (ENXIO);
}
