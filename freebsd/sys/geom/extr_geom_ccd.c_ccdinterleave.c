
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdiinfo {int* ii_index; int ii_ndisk; int ii_startblk; int ii_startoff; } ;
struct ccdcinfo {int ci_size; } ;
struct ccd_s {int sc_ndisks; int sc_ileave; struct ccdcinfo* sc_cinfo; struct ccdiinfo* sc_itable; } ;
typedef int daddr_t ;


 int M_WAITOK ;
 int M_ZERO ;
 int g_free (int*) ;
 void* g_malloc (int,int) ;

__attribute__((used)) static void
ccdinterleave(struct ccd_s *cs)
{
 struct ccdcinfo *ci, *smallci;
 struct ccdiinfo *ii;
 daddr_t bn, lbn;
 int ix;
 daddr_t size;
 size = (cs->sc_ndisks + 1) * sizeof(struct ccdiinfo);
 cs->sc_itable = g_malloc(size, M_WAITOK | M_ZERO);







 if (cs->sc_ileave == 0) {
  bn = 0;
  ii = cs->sc_itable;

  for (ix = 0; ix < cs->sc_ndisks; ix++) {

   ii->ii_index = g_malloc(sizeof(int), M_WAITOK);
   ii->ii_ndisk = 1;
   ii->ii_startblk = bn;
   ii->ii_startoff = 0;
   ii->ii_index[0] = ix;
   bn += cs->sc_cinfo[ix].ci_size;
   ii++;
  }
  ii->ii_ndisk = 0;
  return;
 }




 size = 0;
 bn = lbn = 0;
 for (ii = cs->sc_itable; ; ii++) {




  ii->ii_index = g_malloc((sizeof(int) * cs->sc_ndisks),
      M_WAITOK);




  smallci = ((void*)0);
  for (ci = cs->sc_cinfo; ci < &cs->sc_cinfo[cs->sc_ndisks];
      ci++) {
   if (ci->ci_size > size &&
       (smallci == ((void*)0) ||
        ci->ci_size < smallci->ci_size)) {
    smallci = ci;
   }
  }




  if (smallci == ((void*)0)) {
   ii->ii_ndisk = 0;
   g_free(ii->ii_index);
   ii->ii_index = ((void*)0);
   break;
  }




  ii->ii_startblk = bn / cs->sc_ileave;






  ii->ii_startoff = lbn;





  ix = 0;
  for (ci = cs->sc_cinfo;
      ci < &cs->sc_cinfo[cs->sc_ndisks]; ci++) {
   if (ci->ci_size >= smallci->ci_size) {
    ii->ii_index[ix++] = ci - cs->sc_cinfo;
   }
  }
  ii->ii_ndisk = ix;
  bn += ix * (smallci->ci_size - size);
  lbn = smallci->ci_size / cs->sc_ileave;
  size = smallci->ci_size;
 }
}
