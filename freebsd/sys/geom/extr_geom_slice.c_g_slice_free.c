
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_slicer {struct g_slicer* softc; struct g_slicer* hotspot; struct g_slicer* slices; } ;
struct g_geom {struct g_slicer* softc; } ;


 int g_free (struct g_slicer*) ;

__attribute__((used)) static void
g_slice_free(struct g_geom *gp)
{
 struct g_slicer *gsp;

 gsp = gp->softc;
 gp->softc = ((void*)0);






 if (gsp == ((void*)0))
  return;
 g_free(gsp->slices);
 if (gsp->hotspot != ((void*)0))
  g_free(gsp->hotspot);
 if (gsp->softc != ((void*)0))
  g_free(gsp->softc);
 g_free(gsp);
}
