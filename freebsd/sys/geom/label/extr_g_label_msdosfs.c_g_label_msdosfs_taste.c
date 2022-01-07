
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct g_provider {int sectorsize; int name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct TYPE_6__ {int* BS_FilSysType; int* BS_VolLab; int BPB_NumFATs; int BPB_BytsPerSec; int BPB_FATSz32; int BPB_RsvdSecCnt; } ;
struct TYPE_5__ {int* BS_FilSysType; int* BS_VolLab; int BPB_FATSz16; } ;
struct TYPE_4__ {int* DIR_Name; int DIR_Attr; } ;
typedef TYPE_1__ FAT_DES ;
typedef TYPE_2__ FAT_BSBPB ;
typedef TYPE_3__ FAT32_BSBPB ;


 int FAT_DES_ATTR_LONG_NAME ;
 int FAT_DES_ATTR_VOLUME_ID ;
 int G_LABEL_DEBUG (int,char*,int,...) ;
 char* LABEL_NO_NAME ;
 int MIN (size_t,int) ;
 scalar_t__ UINT16BYTES (int ) ;
 int UINT32BYTES (int ) ;
 int bzero (char*,size_t) ;
 int g_free (int*) ;
 int g_label_rtrim (char*,size_t) ;
 scalar_t__ g_read_data (struct g_consumer*,int,int,int *) ;
 int g_topology_assert_not () ;
 int strlcpy (char*,int*,int ) ;
 scalar_t__ strncmp (int*,char*,int) ;

__attribute__((used)) static void
g_label_msdosfs_taste(struct g_consumer *cp, char *label, size_t size)
{
 struct g_provider *pp;
 FAT_BSBPB *pfat_bsbpb;
 FAT32_BSBPB *pfat32_bsbpb;
 FAT_DES *pfat_entry;
 uint8_t *sector0, *sector;

 g_topology_assert_not();
 pp = cp->provider;
 sector0 = ((void*)0);
 sector = ((void*)0);
 bzero(label, size);


 switch(pp->sectorsize) {
 case 512:
 case 1024:
 case 2048:
 case 4096:
  break;
 default:
  G_LABEL_DEBUG(1, "MSDOSFS: %s: sector size %d not compatible.",
      pp->name, pp->sectorsize);
  return;
 }


 sector0 = (uint8_t *)g_read_data(cp, 0, pp->sectorsize, ((void*)0));
 if (sector0 == ((void*)0))
  return;


 if (sector0[510] != 0x55 || sector0[511] != 0xaa) {
  G_LABEL_DEBUG(1, "MSDOSFS: %s: no FAT signature found.",
      pp->name);
  goto error;
 }






 pfat_bsbpb = (FAT_BSBPB *)sector0;
 pfat32_bsbpb = (FAT32_BSBPB *)sector0;

 if (UINT16BYTES(pfat_bsbpb->BPB_FATSz16) != 0) {




  if (strncmp(pfat_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
   G_LABEL_DEBUG(1,
       "MSDOSFS: %s: FAT12/16 volume not valid.",
       pp->name);
   goto error;
  }
  G_LABEL_DEBUG(1, "MSDOSFS: %s: FAT12/FAT16 volume detected.",
      pp->name);


  if (strncmp(pfat_bsbpb->BS_VolLab, LABEL_NO_NAME,
      sizeof(pfat_bsbpb->BS_VolLab)) == 0) {
   G_LABEL_DEBUG(1,
       "MSDOSFS: %s: FAT12/16 volume has no name.",
       pp->name);
   goto error;
  }
  strlcpy(label, pfat_bsbpb->BS_VolLab,
      MIN(size, sizeof(pfat_bsbpb->BS_VolLab) + 1));
 } else if (UINT32BYTES(pfat32_bsbpb->BPB_FATSz32) != 0) {
  uint32_t fat_FirstDataSector, fat_BytesPerSector, offset;





  if (strncmp(pfat32_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
   G_LABEL_DEBUG(1, "MSDOSFS: %s: FAT32 volume not valid.",
       pp->name);
   goto error;
  }
  G_LABEL_DEBUG(1, "MSDOSFS: %s: FAT32 volume detected.",
      pp->name);




  if (strncmp(pfat32_bsbpb->BS_VolLab, LABEL_NO_NAME,
      sizeof(pfat32_bsbpb->BS_VolLab)) != 0) {
   strlcpy(label, pfat32_bsbpb->BS_VolLab,
       MIN(size, sizeof(pfat32_bsbpb->BS_VolLab) + 1));
   goto endofchecks;
  }






  fat_FirstDataSector =
      UINT16BYTES(pfat32_bsbpb->BPB_RsvdSecCnt) +
      (pfat32_bsbpb->BPB_NumFATs *
       UINT32BYTES(pfat32_bsbpb->BPB_FATSz32));
  fat_BytesPerSector = UINT16BYTES(pfat32_bsbpb->BPB_BytsPerSec);

  G_LABEL_DEBUG(2,
      "MSDOSFS: FAT_FirstDataSector=0x%x, FAT_BytesPerSector=%d",
      fat_FirstDataSector, fat_BytesPerSector);

  for (offset = fat_BytesPerSector * fat_FirstDataSector;;
      offset += fat_BytesPerSector) {
   sector = (uint8_t *)g_read_data(cp, offset,
       fat_BytesPerSector, ((void*)0));
   if (sector == ((void*)0))
    goto error;

   pfat_entry = (FAT_DES *)sector;
   do {

    if (pfat_entry->DIR_Name[0] == 0) {
     G_LABEL_DEBUG(1, "MSDOSFS: %s: "
         "FAT32 volume has no name.",
         pp->name);
     goto error;
    }


    if (pfat_entry->DIR_Name[0] == 0xe5 ||
        (pfat_entry->DIR_Attr &
         FAT_DES_ATTR_LONG_NAME) ==
        FAT_DES_ATTR_LONG_NAME) {
     continue;
    }





    if (pfat_entry->DIR_Attr &
        FAT_DES_ATTR_VOLUME_ID) {
     strlcpy(label, pfat_entry->DIR_Name,
         MIN(size,
         sizeof(pfat_entry->DIR_Name) + 1));
     goto endofchecks;
    }
   } while((uint8_t *)(++pfat_entry) <
       (uint8_t *)(sector + fat_BytesPerSector));
   g_free(sector);
  }
 } else {
  G_LABEL_DEBUG(1, "MSDOSFS: %s: no FAT volume detected.",
      pp->name);
  goto error;
 }

endofchecks:
 g_label_rtrim(label, size);

error:
 if (sector0 != ((void*)0))
  g_free(sector0);
 if (sector != ((void*)0))
  g_free(sector);
}
