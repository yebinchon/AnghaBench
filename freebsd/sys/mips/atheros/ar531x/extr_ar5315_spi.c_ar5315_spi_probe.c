
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
ar5315_spi_probe(device_t dev)
{
 device_set_desc(dev, "AR5315 SPI");
 return (0);
}
