
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ufs1_daddr_t ;
struct fs {scalar_t__ fs_frag; } ;


 int panic (char*) ;

void
ffs_setblock(struct fs *fs, unsigned char *cp, ufs1_daddr_t h)
{

 switch ((int)fs->fs_frag) {

 case 8:
  cp[h] = 0xff;
  return;
 case 4:
  cp[h >> 1] |= (0x0f << ((h & 0x1) << 2));
  return;
 case 2:
  cp[h >> 2] |= (0x03 << ((h & 0x3) << 1));
  return;
 case 1:
  cp[h >> 3] |= (0x01 << (h & 0x7));
  return;
 default:



  break;
 }
}
