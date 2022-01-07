
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spibus_ivar {int mode; int cs; } ;
typedef int device_t ;


 struct spibus_ivar* SPIBUS_IVAR (int ) ;
 int device_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void
spibus_probe_nomatch(device_t bus, device_t child)
{
 struct spibus_ivar *devi = SPIBUS_IVAR(child);

 device_printf(bus, "<unknown card> at cs %d mode %d\n", devi->cs,
     devi->mode);
 return;
}
