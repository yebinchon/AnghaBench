
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ee_version; } ;


 TYPE_1__ eeprom ;
 int warnx (char*,char const*,int,int) ;

__attribute__((used)) static void
undef(const char *what)
{
 warnx("%s undefined for version %d.%d format EEPROM", what,
     eeprom.ee_version >> 12, eeprom.ee_version & 0xfff);
}
