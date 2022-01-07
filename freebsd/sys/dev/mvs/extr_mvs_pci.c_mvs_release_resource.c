
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int ATA_IRQ_RID ;
 int EINVAL ;
 int ENOENT ;


 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
mvs_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{

 switch (type) {
 case 128:
  rman_release_resource(r);
  return (0);
 case 129:
  if (rid != ATA_IRQ_RID)
   return ENOENT;
  return (0);
 }
 return (EINVAL);
}
