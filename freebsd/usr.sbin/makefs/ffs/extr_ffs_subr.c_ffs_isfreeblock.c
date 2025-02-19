
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fs {scalar_t__ fs_fragshift; } ;
typedef size_t int32_t ;


 int panic (char*,int) ;

int
ffs_isfreeblock(struct fs *fs, u_char *cp, int32_t h)
{

 switch ((int)fs->fs_fragshift) {
 case 3:
  return (cp[h] == 0);
 case 2:
  return ((cp[h >> 1] & (0x0f << ((h & 0x1) << 2))) == 0);
 case 1:
  return ((cp[h >> 2] & (0x03 << ((h & 0x3) << 1))) == 0);
 case 0:
  return ((cp[h >> 3] & (0x01 << (h & 0x7))) == 0);
 default:
  panic("ffs_isfreeblock: unknown fs_fragshift %d",
      (int)fs->fs_fragshift);
 }
}
