
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_slicer {size_t nslice; struct g_slice* slices; } ;
struct g_slice {scalar_t__ length; scalar_t__ offset; struct g_provider* provider; } ;
struct g_provider {size_t index; scalar_t__ acw; scalar_t__ ace; struct g_geom* geom; } ;
struct g_geom {int flags; struct g_slicer* softc; int consumer; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; int ace; } ;


 int EPERM ;
 int G_GEOM_WITHER ;
 int KASSERT (int ,char*) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_slice_free (struct g_geom*) ;

__attribute__((used)) static int
g_slice_access(struct g_provider *pp, int dr, int dw, int de)
{
 int error;
 u_int u;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct g_provider *pp2;
 struct g_slicer *gsp;
 struct g_slice *gsl, *gsl2;

 gp = pp->geom;
 cp = LIST_FIRST(&gp->consumer);
 KASSERT (cp != ((void*)0), ("g_slice_access but no consumer"));
 gsp = gp->softc;
 if (dr > 0 || dw > 0 || de > 0) {
  gsl = &gsp->slices[pp->index];
  for (u = 0; u < gsp->nslice; u++) {
   gsl2 = &gsp->slices[u];
   if (gsl2->length == 0)
    continue;
   if (u == pp->index)
    continue;
   if (gsl->offset + gsl->length <= gsl2->offset)
    continue;
   if (gsl2->offset + gsl2->length <= gsl->offset)
    continue;

   pp2 = gsl2->provider;
   if ((pp->acw + dw) > 0 && pp2->ace > 0)
    return (EPERM);
   if ((pp->ace + de) > 0 && pp2->acw > 0)
    return (EPERM);
  }
 }

 if (cp->acr == 0 && cp->acw == 0 && cp->ace == 0)
  de++;

 if ((cp->acr + dr) == 0 && (cp->acw + dw) == 0 && (cp->ace + de) == 1)
  de--;
 error = g_access(cp, dr, dw, de);





 if (error == 0 && (gp->flags & G_GEOM_WITHER) != 0 &&
     (cp->acr + cp->acw + cp->ace) == 0)
  g_slice_free(gp);

 return (error);
}
