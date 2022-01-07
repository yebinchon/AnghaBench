
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_slicer {unsigned int nslice; void* slices; int * softc; } ;
struct g_slice {int dummy; } ;


 int M_WAITOK ;
 int M_ZERO ;
 void* g_malloc (unsigned int,int) ;

__attribute__((used)) static struct g_slicer *
g_slice_alloc(unsigned nslice, unsigned scsize)
{
 struct g_slicer *gsp;

 gsp = g_malloc(sizeof *gsp, M_WAITOK | M_ZERO);
 if (scsize > 0)
  gsp->softc = g_malloc(scsize, M_WAITOK | M_ZERO);
 else
  gsp->softc = ((void*)0);
 gsp->slices = g_malloc(nslice * sizeof(struct g_slice),
     M_WAITOK | M_ZERO);
 gsp->nslice = nslice;
 return (gsp);
}
