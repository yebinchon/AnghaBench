
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct jmicron_raid_conf {int* disks; } ;


 int JMICRON_MAX_DISKS ;

__attribute__((used)) static uint32_t
jmicron_meta_config_id(struct jmicron_raid_conf *meta)
{
 int pos;
 uint32_t config_id;

 config_id = 0;
 for (pos = 0; pos < JMICRON_MAX_DISKS; pos++)
  config_id += meta->disks[pos] << pos;
 return (config_id);
}
