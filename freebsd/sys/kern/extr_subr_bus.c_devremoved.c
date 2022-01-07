
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int devaddq (char*,int ,int ) ;
 int device_get_nameunit (int ) ;

__attribute__((used)) static void
devremoved(device_t dev)
{
 devaddq("-", device_get_nameunit(dev), dev);
}
