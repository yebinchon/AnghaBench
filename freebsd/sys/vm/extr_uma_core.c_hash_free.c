
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_hash {scalar_t__ uh_hashsize; int * uh_slab_hash; } ;


 int M_UMAHASH ;
 int SKIP_NONE ;
 scalar_t__ UMA_HASH_SIZE_INIT ;
 int free (int *,int ) ;
 int hashzone ;
 int zone_free_item (int ,int *,int *,int ) ;

__attribute__((used)) static void
hash_free(struct uma_hash *hash)
{
 if (hash->uh_slab_hash == ((void*)0))
  return;
 if (hash->uh_hashsize == UMA_HASH_SIZE_INIT)
  zone_free_item(hashzone, hash->uh_slab_hash, ((void*)0), SKIP_NONE);
 else
  free(hash->uh_slab_hash, M_UMAHASH);
}
