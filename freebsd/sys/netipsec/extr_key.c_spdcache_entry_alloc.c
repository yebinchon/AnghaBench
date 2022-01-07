
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicyindex {int dummy; } ;
struct spdcache_entry {struct secpolicy* sp; struct secpolicyindex spidx; } ;
struct secpolicy {int dummy; } ;


 int M_IPSEC_SPDCACHE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SP_ADDREF (struct secpolicy*) ;
 struct spdcache_entry* malloc (int,int ,int) ;

struct spdcache_entry *
spdcache_entry_alloc(const struct secpolicyindex *spidx, struct secpolicy *sp)
{
 struct spdcache_entry *entry;

 entry = malloc(sizeof(struct spdcache_entry),
      M_IPSEC_SPDCACHE, M_NOWAIT|M_ZERO);
 if (entry == ((void*)0))
  return ((void*)0);

 if (sp != ((void*)0))
  SP_ADDREF(sp);

 entry->spidx = *spidx;
 entry->sp = sp;

 return (entry);
}
