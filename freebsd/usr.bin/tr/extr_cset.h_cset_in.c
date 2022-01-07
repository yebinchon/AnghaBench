
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t wchar_t ;
struct cset {int* cs_cache; scalar_t__ cs_havecache; } ;


 size_t CS_CACHE_SIZE ;
 int cset_in_hard (struct cset*,size_t) ;

__attribute__((used)) static __inline bool
cset_in(struct cset *cs, wchar_t ch)
{

 if (ch < CS_CACHE_SIZE && cs->cs_havecache)
  return (cs->cs_cache[ch]);
 return (cset_in_hard(cs, ch));
}
