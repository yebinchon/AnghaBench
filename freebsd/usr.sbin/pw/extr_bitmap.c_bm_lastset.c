
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int size; unsigned char* map; } ;



int
bm_lastset(struct bitmap * bm)
{
 int szmap = (bm->size / 8) + !!(bm->size % 8);
 int at = 0;
 int pos = 0;
 int ofs = 0;

 while (pos < szmap) {
  unsigned char bmv = bm->map[pos++];
  unsigned char bmask = 1;

  while (bmask & 0xff) {
   if ((bmv & bmask) != 0)
    ofs = at;
   bmask <<= 1;
   ++at;
  }
 }
 return ofs;
}
