
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int volumeDescriptorData; int sector; } ;
typedef TYPE_1__ volume_descriptor ;
struct TYPE_6__ {TYPE_1__* firstVolumeDescriptor; } ;
typedef TYPE_2__ iso9660_disk ;
typedef int FILE ;


 int cd9660_write_filedata (TYPE_2__*,int *,int ,int ,int) ;

__attribute__((used)) static int
cd9660_write_volume_descriptors(iso9660_disk *diskStructure, FILE *fd)
{
 volume_descriptor *vd_temp = diskStructure->firstVolumeDescriptor;

 while (vd_temp != ((void*)0)) {
  cd9660_write_filedata(diskStructure, fd, vd_temp->sector,
      vd_temp->volumeDescriptorData, 1);
  vd_temp = vd_temp->next;
 }
 return 1;
}
