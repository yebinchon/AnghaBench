
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ufs1_daddr_t ;
typedef int u_char ;
struct fs {scalar_t__ fs_frag; } ;


 int panic (char*) ;

int
ffs_isfreeblock(struct fs *fs, u_char *cp, ufs1_daddr_t h)
{

 switch ((int)fs->fs_frag) {
 case 8:
  return (cp[h] == 0);
 case 4:
  return ((cp[h >> 1] & (0x0f << ((h & 0x1) << 2))) == 0);
 case 2:
  return ((cp[h >> 2] & (0x03 << ((h & 0x3) << 1))) == 0);
 case 1:
  return ((cp[h >> 3] & (0x01 << (h & 0x7))) == 0);
 default:



  break;
 }
 return (0);
}
