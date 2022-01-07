
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {int sectorsize; int name; } ;
struct g_llvm_label {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_LLVM_DEBUG (int,char*,int ,int) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,int ,int,int*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int llvm_label_decode (int *,struct g_llvm_label*,int) ;

int
g_llvm_read_label(struct g_consumer *cp, struct g_llvm_label *ll)
{
 struct g_provider *pp;
 u_char *buf;
 int i, error = 0;

 g_topology_assert();


 error = g_access(cp, 1, 0, 0);
 if (error != 0)
  return (error);
 pp = cp->provider;
 g_topology_unlock();
 buf = g_read_data(cp, 0, pp->sectorsize * 4, &error);
 g_topology_lock();
 g_access(cp, -1, 0, 0);
 if (buf == ((void*)0)) {
  G_LLVM_DEBUG(1, "Cannot read metadata from %s (error=%d)",
      pp->name, error);
  return (error);
 }


 for (i = 0; i < 4; i++) {
  error = llvm_label_decode(&buf[i * pp->sectorsize], ll, i);
  if (error == 0)
   break;
 }
 g_free(buf);
 return (error);
}
