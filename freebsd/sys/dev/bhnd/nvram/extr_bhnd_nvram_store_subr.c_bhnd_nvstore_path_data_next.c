
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bhnd_nvram_store {int data; } ;
struct TYPE_6__ {TYPE_1__* index; int path_str; } ;
typedef TYPE_2__ bhnd_nvstore_path ;
struct TYPE_5__ {scalar_t__ count; void** cookiep; } ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int BHND_NV_ASSERT (int,char*) ;
 int MA_OWNED ;
 int * bhnd_nvram_data_next (int ,void**) ;
 int bhnd_nvstore_is_root_path (struct bhnd_nvram_store*,TYPE_2__*) ;

void *
bhnd_nvstore_path_data_next(struct bhnd_nvram_store *sc,
     bhnd_nvstore_path *path, void **indexp)
{
 void **index_ref;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 if (path->index == ((void*)0)) {


  BHND_NV_ASSERT(bhnd_nvstore_is_root_path(sc, path),
      ("missing index for non-root path %s", path->path_str));



  if ((bhnd_nvram_data_next(sc->data, indexp)) == ((void*)0))
   return (((void*)0));

  return (*indexp);
 }


 if (path->index->count == 0)
  return (((void*)0));

 if (*indexp == ((void*)0)) {

  index_ref = &path->index->cookiep[0];
 } else {
  size_t idxpos;


  index_ref = *indexp;
  index_ref++;


  BHND_NV_ASSERT(index_ref > path->index->cookiep,
      ("invalid indexp"));

  idxpos = (index_ref - path->index->cookiep);
  if (idxpos >= path->index->count)
   return (((void*)0));
 }


 *indexp = index_ref;


 return (*index_ref);
}
