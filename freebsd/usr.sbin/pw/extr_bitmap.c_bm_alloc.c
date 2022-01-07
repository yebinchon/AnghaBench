
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int size; scalar_t__ map; } ;


 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;

struct bitmap
bm_alloc(int size)
{
 struct bitmap bm;
 int szmap = (size / 8) + !!(size % 8);

 bm.size = size;
 bm.map = malloc(szmap);
 if (bm.map)
  memset(bm.map, 0, szmap);
 return bm;
}
