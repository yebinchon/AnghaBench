
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s_magic; scalar_t__ s_rev_level; char* s_volume_name; } ;
typedef TYPE_1__ e2sb_t ;
typedef int FILE ;


 int EXT2FS_SB_OFFSET ;
 scalar_t__ EXT2_DYNAMIC_REV ;
 scalar_t__ EXT2_SUPER_MAGIC ;
 int free (TYPE_1__*) ;
 scalar_t__ read_buf (int *,int ,int) ;
 int strlcpy (char*,char*,size_t) ;

int
fstyp_ext2fs(FILE *fp, char *label, size_t size)
{
 e2sb_t *fs;
 char *s_volume_name;

 fs = (e2sb_t *)read_buf(fp, EXT2FS_SB_OFFSET, 512);
 if (fs == ((void*)0))
  return (1);


 if (fs->s_magic == EXT2_SUPER_MAGIC &&
     fs->s_rev_level == EXT2_DYNAMIC_REV) {


 } else {
  free(fs);
  return (1);
 }

 s_volume_name = fs->s_volume_name;

 s_volume_name[sizeof(fs->s_volume_name) - 1] = '\0';

 if (s_volume_name[0] == '/')
  s_volume_name += 1;

 strlcpy(label, s_volume_name, size);
 free(fs);

 return (0);
}
