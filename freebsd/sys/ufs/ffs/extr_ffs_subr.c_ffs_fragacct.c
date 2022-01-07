
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {size_t fs_frag; } ;
typedef int int32_t ;


 int NBBY ;
 int* around ;
 scalar_t__** fragtbl ;
 int* inside ;

void
ffs_fragacct(struct fs *fs, int fragmap, int32_t fraglist[], int cnt)
{
 int inblk;
 int field, subfield;
 int siz, pos;

 inblk = (int)(fragtbl[fs->fs_frag][fragmap]) << 1;
 fragmap <<= 1;
 for (siz = 1; siz < fs->fs_frag; siz++) {
  if ((inblk & (1 << (siz + (fs->fs_frag % NBBY)))) == 0)
   continue;
  field = around[siz];
  subfield = inside[siz];
  for (pos = siz; pos <= fs->fs_frag; pos++) {
   if ((fragmap & field) == subfield) {
    fraglist[siz] += cnt;
    pos += siz;
    field <<= siz;
    subfield <<= siz;
   }
   field <<= 1;
   subfield <<= 1;
  }
 }
}
