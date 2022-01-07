
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_keg_t ;
typedef int u_int ;
struct uma_hash {int uh_hashsize; } ;
struct TYPE_9__ {int uk_flags; int uk_pages; int uk_ppera; struct uma_hash uk_hash; } ;
struct TYPE_8__ {int uz_flags; int * uz_domain; TYPE_2__* uz_keg; } ;


 int KEG_LOCK (TYPE_2__*) ;
 int KEG_UNLOCK (TYPE_2__*) ;
 int UMA_ZFLAG_CACHE ;
 int UMA_ZONE_HASH ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int fls (int) ;
 int hash_alloc (struct uma_hash*,int) ;
 scalar_t__ hash_expand (struct uma_hash*,struct uma_hash*) ;
 int hash_free (struct uma_hash*) ;
 int vm_ndomains ;
 int zone_domain_update_wss (int *) ;

__attribute__((used)) static void
zone_timeout(uma_zone_t zone)
{
 uma_keg_t keg;
 u_int slabs;

 if ((zone->uz_flags & UMA_ZFLAG_CACHE) != 0)
  goto update_wss;

 keg = zone->uz_keg;
 KEG_LOCK(keg);







 if (keg->uk_flags & UMA_ZONE_HASH &&
     (slabs = keg->uk_pages / keg->uk_ppera) >
      keg->uk_hash.uh_hashsize) {
  struct uma_hash newhash;
  struct uma_hash oldhash;
  int ret;







  KEG_UNLOCK(keg);
  ret = hash_alloc(&newhash, 1 << fls(slabs));
  KEG_LOCK(keg);
  if (ret) {
   if (hash_expand(&keg->uk_hash, &newhash)) {
    oldhash = keg->uk_hash;
    keg->uk_hash = newhash;
   } else
    oldhash = newhash;

   KEG_UNLOCK(keg);
   hash_free(&oldhash);
   return;
  }
 }
 KEG_UNLOCK(keg);

update_wss:
 ZONE_LOCK(zone);
 for (int i = 0; i < vm_ndomains; i++)
  zone_domain_update_wss(&zone->uz_domain[i]);
 ZONE_UNLOCK(zone);
}
