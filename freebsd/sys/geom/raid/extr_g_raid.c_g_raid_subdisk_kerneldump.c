
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct g_raid_subdisk {scalar_t__ sd_offset; TYPE_2__* sd_disk; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {scalar_t__ mediaoffset; int * dumper; } ;
struct TYPE_4__ {TYPE_3__ di; } ;
struct TYPE_5__ {TYPE_1__ d_kd; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int dump_write (TYPE_3__*,void*,int ,scalar_t__,size_t) ;

int
g_raid_subdisk_kerneldump(struct g_raid_subdisk *sd,
    void *virtual, vm_offset_t physical, off_t offset, size_t length)
{

 if (sd->sd_disk == ((void*)0))
  return (ENXIO);
 if (sd->sd_disk->d_kd.di.dumper == ((void*)0))
  return (EOPNOTSUPP);
 return (dump_write(&sd->sd_disk->d_kd.di,
     virtual, physical,
     sd->sd_disk->d_kd.di.mediaoffset + sd->sd_offset + offset,
     length));
}
