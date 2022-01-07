
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_uzip_lzma {int * s; } ;
struct g_uzip_dapi {scalar_t__ pvt; } ;


 int M_GEOM_UZIP ;
 int free (struct g_uzip_lzma*,int ) ;
 int xz_dec_end (int *) ;

__attribute__((used)) static void
g_uzip_lzma_free(struct g_uzip_dapi *lzpp)
{
 struct g_uzip_lzma *lzp;

 lzp = (struct g_uzip_lzma *)lzpp->pvt;
 if (lzp->s != ((void*)0)) {
  xz_dec_end(lzp->s);
  lzp->s = ((void*)0);
 }

 free(lzp, M_GEOM_UZIP);
}
