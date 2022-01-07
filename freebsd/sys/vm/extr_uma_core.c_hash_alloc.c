
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uma_hash {int uh_hashsize; int uh_hashmask; struct slabhead* uh_slab_hash; } ;
struct slabhead {int dummy; } ;


 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int M_UMAHASH ;
 int M_WAITOK ;
 int UMA_ANYDOMAIN ;
 int UMA_HASH_SIZE_INIT ;
 int bzero (struct slabhead*,size_t) ;
 int hashzone ;
 scalar_t__ malloc (size_t,int ,int ) ;
 int powerof2 (int) ;
 struct slabhead* zone_alloc_item (int ,int *,int ,int ) ;

__attribute__((used)) static int
hash_alloc(struct uma_hash *hash, u_int size)
{
 size_t alloc;

 KASSERT(powerof2(size), ("hash size must be power of 2"));
 if (size > UMA_HASH_SIZE_INIT) {
  hash->uh_hashsize = size;
  alloc = sizeof(hash->uh_slab_hash[0]) * hash->uh_hashsize;
  hash->uh_slab_hash = (struct slabhead *)malloc(alloc,
      M_UMAHASH, M_NOWAIT);
 } else {
  alloc = sizeof(hash->uh_slab_hash[0]) * UMA_HASH_SIZE_INIT;
  hash->uh_slab_hash = zone_alloc_item(hashzone, ((void*)0),
      UMA_ANYDOMAIN, M_WAITOK);
  hash->uh_hashsize = UMA_HASH_SIZE_INIT;
 }
 if (hash->uh_slab_hash) {
  bzero(hash->uh_slab_hash, alloc);
  hash->uh_hashmask = hash->uh_hashsize - 1;
  return (1);
 }

 return (0);
}
