
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdcache_entry {int * sp; } ;


 int M_IPSEC_SPDCACHE ;
 int free (struct spdcache_entry*,int ) ;
 int key_freesp (int **) ;

void
spdcache_entry_free(struct spdcache_entry *entry)
{

 if (entry->sp != ((void*)0))
  key_freesp(&entry->sp);
 free(entry, M_IPSEC_SPDCACHE);
}
