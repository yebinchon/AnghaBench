
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_add_child (int ,char*,int ) ;
 int root_bus ;

__attribute__((used)) static void
configure_first(void *dummy)
{


 device_add_child(root_bus, "nexus", 0);
}
