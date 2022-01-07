
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jmicron_raid_conf {scalar_t__* disks; } ;


 int JMICRON_MAX_DISKS ;

__attribute__((used)) static int
jmicron_meta_total_disks(struct jmicron_raid_conf *meta)
{
 int pos;

 for (pos = 0; pos < JMICRON_MAX_DISKS; pos++) {
  if (meta->disks[pos] == 0)
   break;
 }
 return (pos);
}
