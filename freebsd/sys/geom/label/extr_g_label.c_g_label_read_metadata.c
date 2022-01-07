
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_label_metadata {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;


 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int label_metadata_decode (int *,struct g_label_metadata*) ;

__attribute__((used)) static int
g_label_read_metadata(struct g_consumer *cp, struct g_label_metadata *md)
{
 struct g_provider *pp;
 u_char *buf;
 int error;

 g_topology_assert();

 pp = cp->provider;
 g_topology_unlock();
 buf = g_read_data(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
     &error);
 g_topology_lock();
 if (buf == ((void*)0))
  return (error);

 label_metadata_decode(buf, md);
 g_free(buf);

 return (0);
}
