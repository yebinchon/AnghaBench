
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_cache_metadata {int dummy; } ;


 int M_GCACHE ;
 int M_WAITOK ;
 int M_ZERO ;
 int cache_metadata_encode (struct g_cache_metadata*,int *) ;
 int free (int *,int ) ;
 int g_access (struct g_consumer*,int ,int,int ) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_write_data (struct g_consumer*,scalar_t__,int *,scalar_t__) ;
 int * malloc (size_t,int ,int) ;

__attribute__((used)) static int
g_cache_write_metadata(struct g_consumer *cp, struct g_cache_metadata *md)
{
 struct g_provider *pp;
 u_char *buf;
 int error;

 g_topology_assert();

 error = g_access(cp, 0, 1, 0);
 if (error != 0)
  return (error);
 pp = cp->provider;
 buf = malloc((size_t)pp->sectorsize, M_GCACHE, M_WAITOK | M_ZERO);
 cache_metadata_encode(md, buf);
 g_topology_unlock();
 error = g_write_data(cp, pp->mediasize - pp->sectorsize, buf, pp->sectorsize);
 g_topology_lock();
 g_access(cp, 0, -1, 0);
 free(buf, M_GCACHE);

 return (error);
}
