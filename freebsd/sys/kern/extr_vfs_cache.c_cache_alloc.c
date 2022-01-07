
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namecache {int dummy; } ;
struct namecache_ts {struct namecache nc_nc; } ;


 int CACHE_PATH_CUTOFF ;
 int M_WAITOK ;
 scalar_t__ __predict_false (int) ;
 int cache_zone_large ;
 int cache_zone_large_ts ;
 int cache_zone_small ;
 int cache_zone_small_ts ;
 void* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct namecache *
cache_alloc(int len, int ts)
{
 struct namecache_ts *ncp_ts;
 struct namecache *ncp;

 if (__predict_false(ts)) {
  if (len <= CACHE_PATH_CUTOFF)
   ncp_ts = uma_zalloc(cache_zone_small_ts, M_WAITOK);
  else
   ncp_ts = uma_zalloc(cache_zone_large_ts, M_WAITOK);
  ncp = &ncp_ts->nc_nc;
 } else {
  if (len <= CACHE_PATH_CUTOFF)
   ncp = uma_zalloc(cache_zone_small, M_WAITOK);
  else
   ncp = uma_zalloc(cache_zone_large, M_WAITOK);
 }
 return (ncp);
}
