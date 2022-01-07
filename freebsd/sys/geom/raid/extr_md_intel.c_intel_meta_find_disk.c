
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_raid_conf {int total_disks; TYPE_1__* disk; } ;
struct TYPE_2__ {int serial; } ;


 int INTEL_SERIAL_LEN ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static int
intel_meta_find_disk(struct intel_raid_conf *meta, char *serial)
{
 int pos;

 for (pos = 0; pos < meta->total_disks; pos++) {
  if (strncmp(meta->disk[pos].serial,
      serial, INTEL_SERIAL_LEN) == 0)
   return (pos);
 }
 return (-1);
}
