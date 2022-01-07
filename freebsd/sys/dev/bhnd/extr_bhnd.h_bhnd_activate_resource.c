
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 int BHND_BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct bhnd_resource*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_activate_resource(device_t dev, int type, int rid,
   struct bhnd_resource *r)
{
 return BHND_BUS_ACTIVATE_RESOURCE(device_get_parent(dev), dev, type,
     rid, r);
}
