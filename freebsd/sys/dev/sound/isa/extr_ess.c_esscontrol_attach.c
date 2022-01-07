
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,struct resource*) ;
 int port_rd (struct resource*,int) ;
 int port_wr (struct resource*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
esscontrol_attach(device_t dev)
{
     return 0;
}
