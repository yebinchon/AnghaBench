
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BLOB_OFFSET (void*,size_t) ;
 int M_NOWAIT ;
 int M_STATS ;
 int M_WAITOK ;
 int M_ZERO ;
 int memset (void*,char,size_t) ;
 void* realloc (void*,size_t,...) ;

__attribute__((used)) static inline void *
stats_realloc(void *ptr, size_t oldsz, size_t newsz, int flags)
{







 ptr = realloc(ptr, newsz);
 if ((flags & M_ZERO) && ptr != ((void*)0)) {
  if (oldsz == 0)
   memset(ptr, '\0', newsz);
  else if (newsz > oldsz)
   memset(BLOB_OFFSET(ptr, oldsz), '\0', newsz - oldsz);
 }


 return (ptr);
}
