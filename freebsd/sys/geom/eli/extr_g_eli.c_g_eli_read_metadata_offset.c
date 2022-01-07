
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {int sectorsize; } ;
struct g_geom {void* spoiled; void* orphan; int access; int start; } ;
struct g_eli_metadata {int dummy; } ;
struct g_consumer {int acr; int * provider; } ;
struct g_class {int dummy; } ;
typedef int off_t ;


 int eli_metadata_decode (int *,struct g_eli_metadata*) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_destroy_geom (struct g_geom*) ;
 int g_detach (struct g_consumer*) ;
 void* g_eli_orphan_spoil_assert ;
 int g_eli_start ;
 int g_free (int *) ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (struct g_class*,char*) ;
 int * g_read_data (struct g_consumer*,int ,int ,int*) ;
 int g_std_access ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;

__attribute__((used)) static int
g_eli_read_metadata_offset(struct g_class *mp, struct g_provider *pp,
    off_t offset, struct g_eli_metadata *md)
{
 struct g_geom *gp;
 struct g_consumer *cp;
 u_char *buf = ((void*)0);
 int error;

 g_topology_assert();

 gp = g_new_geomf(mp, "eli:taste");
 gp->start = g_eli_start;
 gp->access = g_std_access;





 gp->orphan = g_eli_orphan_spoil_assert;
 gp->spoiled = g_eli_orphan_spoil_assert;
 cp = g_new_consumer(gp);
 error = g_attach(cp, pp);
 if (error != 0)
  goto end;
 error = g_access(cp, 1, 0, 0);
 if (error != 0)
  goto end;
 g_topology_unlock();
 buf = g_read_data(cp, offset, pp->sectorsize, &error);
 g_topology_lock();
 if (buf == ((void*)0))
  goto end;
 error = eli_metadata_decode(buf, md);
 if (error != 0)
  goto end;

end:
 if (buf != ((void*)0))
  g_free(buf);
 if (cp->provider != ((void*)0)) {
  if (cp->acr == 1)
   g_access(cp, -1, 0, 0);
  g_detach(cp);
 }
 g_destroy_consumer(cp);
 g_destroy_geom(gp);
 return (error);
}
