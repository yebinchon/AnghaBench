
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 struct resource* CIS_CONFIG_SPACE ;
 int SYS_RES_MEMORY ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;

__attribute__((used)) static void
cardbus_read_tuple_finish(device_t cbdev, device_t child, int rid,
    struct resource *res)
{
 if (res != CIS_CONFIG_SPACE) {
  bus_release_resource(child, SYS_RES_MEMORY, rid, res);
  bus_delete_resource(child, SYS_RES_MEMORY, rid);
 }
}
