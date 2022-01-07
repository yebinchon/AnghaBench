
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;



__attribute__((used)) static int
ata_iobus_release_resource(device_t dev, device_t child, int type, int rid,
      struct resource *r)
{

 return (0);
}
