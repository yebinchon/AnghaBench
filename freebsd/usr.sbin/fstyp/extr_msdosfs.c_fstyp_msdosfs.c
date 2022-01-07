
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int* BS_FilSysType; int* BS_VolLab; int BPB_NumFATs; int BPB_BytsPerSec; int BPB_FATSz32; int BPB_RsvdSecCnt; } ;
struct TYPE_5__ {int* BS_FilSysType; int* BS_VolLab; int BPB_FATSz16; } ;
struct TYPE_4__ {int* DIR_Name; int DIR_Attr; } ;
typedef int FILE ;
typedef TYPE_1__ FAT_DES ;
typedef TYPE_2__ FAT_BSBPB ;
typedef TYPE_3__ FAT32_BSBPB ;


 int FAT_DES_ATTR_LONG_NAME ;
 int FAT_DES_ATTR_VOLUME_ID ;
 char* LABEL_NO_NAME ;
 int MIN (size_t,int) ;
 scalar_t__ UINT16BYTES (int ) ;
 int UINT32BYTES (int ) ;
 int free (int*) ;
 scalar_t__ read_buf (int *,int,int) ;
 int rtrim (char*,size_t) ;
 int strlcpy (char*,int*,int ) ;
 scalar_t__ strncmp (int*,char*,int) ;

int
fstyp_msdosfs(FILE *fp, char *label, size_t size)
{
 FAT_BSBPB *pfat_bsbpb;
 FAT32_BSBPB *pfat32_bsbpb;
 FAT_DES *pfat_entry;
 uint8_t *sector0, *sector;

 sector0 = ((void*)0);
 sector = ((void*)0);


 sector0 = (uint8_t *)read_buf(fp, 0, 512);
 if (sector0 == ((void*)0))
  return (1);


 if (sector0[510] != 0x55 || sector0[511] != 0xaa) {
  goto error;
 }





 pfat_bsbpb = (FAT_BSBPB *)sector0;
 pfat32_bsbpb = (FAT32_BSBPB *)sector0;

 if (UINT16BYTES(pfat_bsbpb->BPB_FATSz16) != 0) {




  if (strncmp(pfat_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
   goto error;
  }


  if (strncmp(pfat_bsbpb->BS_VolLab, LABEL_NO_NAME,
      sizeof(pfat_bsbpb->BS_VolLab)) == 0) {
   goto endofchecks;
  }
  strlcpy(label, pfat_bsbpb->BS_VolLab,
      MIN(size, sizeof(pfat_bsbpb->BS_VolLab) + 1));
 } else if (UINT32BYTES(pfat32_bsbpb->BPB_FATSz32) != 0) {
  uint32_t fat_FirstDataSector, fat_BytesPerSector, offset;





  if (strncmp(pfat32_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
   goto error;
  }




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



  for (offset = fat_BytesPerSector * fat_FirstDataSector;;
      offset += fat_BytesPerSector) {
   sector = (uint8_t *)read_buf(fp, offset, fat_BytesPerSector);
   if (sector == ((void*)0))
    goto error;

   pfat_entry = (FAT_DES *)sector;
   do {

    if (pfat_entry->DIR_Name[0] == 0) {
     goto endofchecks;
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
   free(sector);
  }
 } else {
  goto error;
 }

endofchecks:
 rtrim(label, size);

 free(sector0);
 free(sector);

 return (0);

error:
 free(sector0);
 free(sector);

 return (1);
}
