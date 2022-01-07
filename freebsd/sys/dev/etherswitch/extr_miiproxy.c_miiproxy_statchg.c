
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIBUS_STATCHG (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
miiproxy_statchg(device_t dev)
{

 MIIBUS_STATCHG(device_get_parent(dev));
}
