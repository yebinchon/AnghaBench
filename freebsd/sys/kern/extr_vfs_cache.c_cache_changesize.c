
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_long ;
struct nchashhead {int dummy; } ;
struct namecache {int nc_dvp; int nc_nlen; int nc_name; } ;


 struct namecache* LIST_FIRST (struct nchashhead*) ;
 int LIST_INSERT_HEAD (int ,struct namecache*,int ) ;
 int LIST_REMOVE (struct namecache*,int ) ;
 int M_VFSCACHE ;
 int NCHHASH (int ) ;
 int cache_get_hash (int ,int ,int ) ;
 int cache_lock_all_buckets () ;
 int cache_lock_all_vnodes () ;
 int cache_roundup_2 (int) ;
 int cache_unlock_all_buckets () ;
 int cache_unlock_all_vnodes () ;
 int free (struct nchashhead*,int ) ;
 struct nchashhead* hashinit (int,int ,scalar_t__*) ;
 int nc_hash ;
 scalar_t__ nchash ;
 struct nchashhead* nchashtbl ;
 int ncsize ;
 int ncsizefactor ;
 int numbucketlocks ;

void
cache_changesize(int newmaxvnodes)
{
 struct nchashhead *new_nchashtbl, *old_nchashtbl;
 u_long new_nchash, old_nchash;
 struct namecache *ncp;
 uint32_t hash;
 int newncsize;
 int i;

 newncsize = newmaxvnodes * ncsizefactor;
 newmaxvnodes = cache_roundup_2(newmaxvnodes * 2);
 if (newmaxvnodes < numbucketlocks)
  newmaxvnodes = numbucketlocks;

 new_nchashtbl = hashinit(newmaxvnodes, M_VFSCACHE, &new_nchash);

 if (nchash == new_nchash) {
  free(new_nchashtbl, M_VFSCACHE);
  return;
 }





 cache_lock_all_vnodes();
 cache_lock_all_buckets();
 old_nchashtbl = nchashtbl;
 old_nchash = nchash;
 nchashtbl = new_nchashtbl;
 nchash = new_nchash;
 for (i = 0; i <= old_nchash; i++) {
  while ((ncp = LIST_FIRST(&old_nchashtbl[i])) != ((void*)0)) {
   hash = cache_get_hash(ncp->nc_name, ncp->nc_nlen,
       ncp->nc_dvp);
   LIST_REMOVE(ncp, nc_hash);
   LIST_INSERT_HEAD(NCHHASH(hash), ncp, nc_hash);
  }
 }
 ncsize = newncsize;
 cache_unlock_all_buckets();
 cache_unlock_all_vnodes();
 free(old_nchashtbl, M_VFSCACHE);
}
