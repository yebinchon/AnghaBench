
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 scalar_t__ PCCARD_FUNCTION_UNSPEC ;
 int pccard_get_function (int ,scalar_t__*) ;
 scalar_t__ uart_pccard_function ;

__attribute__((used)) static int
uart_pccard_probe(device_t dev)
{
 int error;
 uint32_t fcn;

 fcn = PCCARD_FUNCTION_UNSPEC;
 error = pccard_get_function(dev, &fcn);
 if (error != 0)
  return (error);





 if (fcn == uart_pccard_function)
  return (BUS_PROBE_GENERIC);

 return (ENXIO);
}
