
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {unsigned char* map; } ;


 int bm_getmask (int*,unsigned char*) ;

void
bm_setbit(struct bitmap * bm, int pos)
{
 unsigned char bmask;

 bm_getmask(&pos, &bmask);
 bm->map[pos] |= bmask;
}
