
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct promise_raid_conf {int total_disks; TYPE_1__* disks; } ;
struct TYPE_2__ {scalar_t__ id; } ;



__attribute__((used)) static int
promise_meta_find_disk(struct promise_raid_conf *meta, uint64_t id)
{
 int pos;

 for (pos = 0; pos < meta->total_disks; pos++) {
  if (meta->disks[pos].id == id)
   return (pos);
 }
 return (-1);
}
