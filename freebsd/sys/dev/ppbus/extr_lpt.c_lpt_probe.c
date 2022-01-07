
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int lpt_detect (int ) ;

__attribute__((used)) static int
lpt_probe(device_t dev)
{

 if (!lpt_detect(dev))
  return (ENXIO);

 device_set_desc(dev, "Printer");

 return (0);
}
