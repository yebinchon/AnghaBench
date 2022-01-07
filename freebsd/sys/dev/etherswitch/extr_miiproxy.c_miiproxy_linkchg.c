
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIBUS_LINKCHG (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
miiproxy_linkchg(device_t dev)
{

 MIIBUS_LINKCHG(device_get_parent(dev));
}
