
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ core_unit; } ;
struct TYPE_4__ {TYPE_1__ match; } ;
struct bhnd_core_match {TYPE_2__ m; int member_1; int member_0; } ;
typedef int device_t ;
typedef int bhnd_devclass_t ;


 int BHND_MATCH_CORE_CLASS (int ) ;
 int BHND_MATCH_CORE_UNIT (int) ;
 int bhnd_bus_match_child (int ,struct bhnd_core_match*) ;

device_t
bhnd_bus_find_child(device_t bus, bhnd_devclass_t class, int unit)
{
 struct bhnd_core_match md = {
  BHND_MATCH_CORE_CLASS(class),
  BHND_MATCH_CORE_UNIT(unit)
 };

 if (unit == -1)
  md.m.match.core_unit = 0;

 return bhnd_bus_match_child(bus, &md);
}
