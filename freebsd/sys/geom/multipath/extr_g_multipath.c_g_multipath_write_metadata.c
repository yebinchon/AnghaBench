
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_multipath_metadata {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_free (int *) ;
 int * g_malloc (scalar_t__,int) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_write_data (struct g_consumer*,scalar_t__,int *,scalar_t__) ;
 int multipath_metadata_encode (struct g_multipath_metadata*,int *) ;

__attribute__((used)) static int
g_multipath_write_metadata(struct g_consumer *cp,
    struct g_multipath_metadata *md)
{
 struct g_provider *pp;
 u_char *buf;
 int error;

 g_topology_assert();
 error = g_access(cp, 1, 1, 1);
 if (error != 0)
  return (error);
 pp = cp->provider;
 g_topology_unlock();
 buf = g_malloc(pp->sectorsize, M_WAITOK | M_ZERO);
 multipath_metadata_encode(md, buf);
 error = g_write_data(cp, pp->mediasize - pp->sectorsize,
     buf, pp->sectorsize);
 g_topology_lock();
 g_access(cp, -1, -1, -1);
 g_free(buf);
 return (error);
}
