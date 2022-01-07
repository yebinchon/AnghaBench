
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t wchar_t ;
struct cset {int cs_havecache; int * cs_cache; } ;


 size_t CS_CACHE_SIZE ;
 int cset_in_hard (struct cset*,size_t) ;

void
cset_cache(struct cset *cs)
{
 wchar_t i;

 for (i = 0; i < CS_CACHE_SIZE; i++)
  cs->cs_cache[i] = cset_in_hard(cs, i);

 cs->cs_havecache = 1;
}
