
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* volumeDescriptorData; int sector; struct TYPE_7__* next; } ;
typedef TYPE_1__ volume_descriptor ;
struct TYPE_8__ {scalar_t__ verbose_level; scalar_t__ is_bootable; TYPE_1__* firstVolumeDescriptor; int primaryDescriptor; } ;
typedef TYPE_2__ iso9660_disk ;


 unsigned char ISO_VOLUME_DESCRIPTOR_PVD ;
 int ISO_VOLUME_DESCRIPTOR_STANDARD_ID ;
 int ISO_VOLUME_DESCRIPTOR_TERMINATOR ;
 int cd9660_setup_boot_volume_descriptor (TYPE_2__*,TYPE_1__*) ;
 void* ecalloc (int,int) ;
 TYPE_1__* emalloc (int) ;
 int memcpy (int*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
cd9660_setup_volume_descriptors(iso9660_disk *diskStructure)
{

 int sector = 16;

 volume_descriptor *temp, *t;


 temp = emalloc(sizeof(*temp));
 temp->volumeDescriptorData =
    (unsigned char *)&diskStructure->primaryDescriptor;
 temp->volumeDescriptorData[0] = ISO_VOLUME_DESCRIPTOR_PVD;
 temp->volumeDescriptorData[6] = 1;
 temp->sector = sector;
 memcpy(temp->volumeDescriptorData + 1,
     ISO_VOLUME_DESCRIPTOR_STANDARD_ID, 5);
 diskStructure->firstVolumeDescriptor = temp;

 sector++;

 if (diskStructure->is_bootable) {
  t = emalloc(sizeof(*t));
  t->volumeDescriptorData = ecalloc(1, 2048);
  temp->next = t;
  temp = t;
  t->sector = 17;
  if (diskStructure->verbose_level > 0)
   printf("Setting up boot volume descriptor\n");
  cd9660_setup_boot_volume_descriptor(diskStructure, t);
  sector++;
 }


 t = emalloc(sizeof(*t));
 t->volumeDescriptorData = ecalloc(1, 2048);
 temp->next = t;
 t->volumeDescriptorData[0] = ISO_VOLUME_DESCRIPTOR_TERMINATOR;
 t->next = ((void*)0);
 t->volumeDescriptorData[6] = 1;
 t->sector = sector;
 memcpy(t->volumeDescriptorData + 1,
     ISO_VOLUME_DESCRIPTOR_STANDARD_ID, 5);

 sector++;
 return sector;
}
