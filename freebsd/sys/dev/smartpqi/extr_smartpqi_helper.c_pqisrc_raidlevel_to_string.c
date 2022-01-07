
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t ARRAY_SIZE (char**) ;
 int DBG_FUNC (char*) ;
 char** raid_levels ;

char *pqisrc_raidlevel_to_string(uint8_t raid_level)
{
 DBG_FUNC("IN\n");
 if (raid_level < ARRAY_SIZE(raid_levels))
  return raid_levels[raid_level];
 DBG_FUNC("OUT\n");

 return " ";
}
