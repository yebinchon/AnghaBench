
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fs {scalar_t__ fs_fragshift; } ;
typedef size_t int32_t ;


 int panic (char*,int) ;

void
ffs_setblock(struct fs *fs, u_char *cp, int32_t h)
{

 switch ((int)fs->fs_fragshift) {
 case 3:
  cp[h] = 0xff;
  return;
 case 2:
  cp[h >> 1] |= (0x0f << ((h & 0x1) << 2));
  return;
 case 1:
  cp[h >> 2] |= (0x03 << ((h & 0x3) << 1));
  return;
 case 0:
  cp[h >> 3] |= (0x01 << (h & 0x7));
  return;
 default:
  panic("ffs_setblock: unknown fs_fragshift %d",
      (int)fs->fs_fragshift);
 }
}
