
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char const*,int) ;

__attribute__((used)) static void
ciu_hinted_child(device_t bus, const char *dname, int dunit)
{
 BUS_ADD_CHILD(bus, 0, dname, dunit);
}
