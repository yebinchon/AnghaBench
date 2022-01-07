
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t wint_t ;
struct cmap {int cm_havecache; int * cm_cache; } ;


 size_t CM_CACHE_SIZE ;
 int cmap_lookup_hard (struct cmap*,size_t) ;

void
cmap_cache(struct cmap *cm)
{
 wint_t ch;

 for (ch = 0; ch < CM_CACHE_SIZE; ch++)
  cm->cm_cache[ch] = cmap_lookup_hard(cm, ch);

 cm->cm_havecache = 1;
}
