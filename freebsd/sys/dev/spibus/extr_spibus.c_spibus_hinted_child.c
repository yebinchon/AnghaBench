
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spibus_ivar {int mode; int cs; int clock; } ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char const*,int) ;
 struct spibus_ivar* SPIBUS_IVAR (int ) ;
 int SPIBUS_MODE_NONE ;
 int resource_int_value (char const*,int,char*,int *) ;

__attribute__((used)) static void
spibus_hinted_child(device_t bus, const char *dname, int dunit)
{
 device_t child;
 struct spibus_ivar *devi;

 child = BUS_ADD_CHILD(bus, 0, dname, dunit);
 devi = SPIBUS_IVAR(child);
 devi->mode = SPIBUS_MODE_NONE;
 resource_int_value(dname, dunit, "clock", &devi->clock);
 resource_int_value(dname, dunit, "cs", &devi->cs);
 resource_int_value(dname, dunit, "mode", &devi->mode);
}
