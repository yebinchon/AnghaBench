
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ufs1_daddr_t ;
struct fs {scalar_t__ fs_frag; } ;


 int panic (char*) ;

int
ffs_isblock(struct fs *fs, unsigned char *cp, ufs1_daddr_t h)
{
 unsigned char mask;

 switch ((int)fs->fs_frag) {
 case 8:
  return (cp[h] == 0xff);
 case 4:
  mask = 0x0f << ((h & 0x1) << 2);
  return ((cp[h >> 1] & mask) == mask);
 case 2:
  mask = 0x03 << ((h & 0x3) << 1);
  return ((cp[h >> 2] & mask) == mask);
 case 1:
  mask = 0x01 << (h & 0x7);
  return ((cp[h >> 3] & mask) == mask);
 default:



  break;
 }
 return (0);
}
