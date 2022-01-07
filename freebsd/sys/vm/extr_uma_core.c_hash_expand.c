
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_slab_t ;
typedef size_t u_int ;
struct uma_hash {scalar_t__ uh_hashsize; int * uh_slab_hash; } ;
struct TYPE_4__ {int us_data; } ;


 int SLIST_EMPTY (int *) ;
 TYPE_1__* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 size_t UMA_HASH (struct uma_hash*,int ) ;
 int us_hlink ;

__attribute__((used)) static int
hash_expand(struct uma_hash *oldhash, struct uma_hash *newhash)
{
 uma_slab_t slab;
 u_int hval;
 u_int idx;

 if (!newhash->uh_slab_hash)
  return (0);

 if (oldhash->uh_hashsize >= newhash->uh_hashsize)
  return (0);






 for (idx = 0; idx < oldhash->uh_hashsize; idx++)
  while (!SLIST_EMPTY(&oldhash->uh_slab_hash[idx])) {
   slab = SLIST_FIRST(&oldhash->uh_slab_hash[idx]);
   SLIST_REMOVE_HEAD(&oldhash->uh_slab_hash[idx], us_hlink);
   hval = UMA_HASH(newhash, slab->us_data);
   SLIST_INSERT_HEAD(&newhash->uh_slab_hash[hval],
       slab, us_hlink);
  }

 return (1);
}
