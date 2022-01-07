
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_virstor_metadata {int dummy; } ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_free (char*) ;
 char* g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int virstor_metadata_decode (char*,struct g_virstor_metadata*) ;

__attribute__((used)) static int
read_metadata(struct g_consumer *cp, struct g_virstor_metadata *md)
{
 struct g_provider *pp;
 char *buf;
 int error;

 g_topology_assert();
 error = g_access(cp, 1, 0, 0);
 if (error != 0)
  return (error);
 pp = cp->provider;
 g_topology_unlock();
 buf = g_read_data(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
     &error);
 g_topology_lock();
 g_access(cp, -1, 0, 0);
 if (buf == ((void*)0))
  return (error);

 virstor_metadata_decode(buf, md);
 g_free(buf);

 return (0);
}
