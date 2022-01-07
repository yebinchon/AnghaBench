
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_nvram_store {int dummy; } ;
struct TYPE_3__ {size_t count; size_t capacity; void** cookiep; } ;
typedef TYPE_1__ bhnd_nvstore_index ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int ENOMEM ;
 int MA_OWNED ;

int
bhnd_nvstore_index_append(struct bhnd_nvram_store *sc,
    bhnd_nvstore_index *index, void *cookiep)
{
 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);

 if (index->count >= index->capacity)
  return (ENOMEM);

 index->cookiep[index->count] = cookiep;
 index->count++;
 return (0);
}
