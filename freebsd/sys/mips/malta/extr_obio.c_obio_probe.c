
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int have_one ;

int
obio_probe(device_t dev)
{
 if (!have_one) {
  have_one = 1;
  return 0;
 }
 return (ENXIO);
}
