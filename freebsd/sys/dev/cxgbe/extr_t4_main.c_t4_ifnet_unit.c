
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {long port_id; } ;
struct adapter {TYPE_1__* names; int dev; } ;
struct TYPE_2__ {char* ifnet_name; } ;


 char* device_get_nameunit (int ) ;
 scalar_t__ resource_find_dev (int*,char const*,int*,char*,char const*) ;
 scalar_t__ resource_long_value (char const*,int,char*,long*) ;

__attribute__((used)) static int
t4_ifnet_unit(struct adapter *sc, struct port_info *pi)
{
 const char *parent, *name;
 long value;
 int line, unit;

 line = 0;
 parent = device_get_nameunit(sc->dev);
 name = sc->names->ifnet_name;
 while (resource_find_dev(&line, name, &unit, "at", parent) == 0) {
  if (resource_long_value(name, unit, "port", &value) == 0 &&
      value == pi->port_id)
   return (unit);
 }
 return (-1);
}
