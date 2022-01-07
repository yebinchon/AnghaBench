
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bhnd_nvstore_index {int dummy; } ;
struct TYPE_4__ {size_t capacity; scalar_t__ count; } ;
typedef TYPE_1__ bhnd_nvstore_index ;


 int BHND_NV_LOG (char*,size_t) ;
 TYPE_1__* bhnd_nv_malloc (size_t) ;

bhnd_nvstore_index *
bhnd_nvstore_index_new(size_t capacity)
{
 bhnd_nvstore_index *index;
 size_t bytes;


 bytes = sizeof(struct bhnd_nvstore_index) + (sizeof(void *) * capacity);
 index = bhnd_nv_malloc(bytes);
 if (index == ((void*)0)) {
  BHND_NV_LOG("error allocating %zu byte index\n", bytes);
  return (((void*)0));
 }

 index->count = 0;
 index->capacity = capacity;

 return (index);
}
