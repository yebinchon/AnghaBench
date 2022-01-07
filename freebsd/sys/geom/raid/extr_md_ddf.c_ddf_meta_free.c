
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddf_meta {int * bbm; int * pdd; int * cr; int * vdr; int * pdr; int * cdr; int * hdr; } ;


 int M_MD_DDF ;
 int free (int *,int ) ;

__attribute__((used)) static void
ddf_meta_free(struct ddf_meta *meta)
{

 if (meta->hdr != ((void*)0)) {
  free(meta->hdr, M_MD_DDF);
  meta->hdr = ((void*)0);
 }
 if (meta->cdr != ((void*)0)) {
  free(meta->cdr, M_MD_DDF);
  meta->cdr = ((void*)0);
 }
 if (meta->pdr != ((void*)0)) {
  free(meta->pdr, M_MD_DDF);
  meta->pdr = ((void*)0);
 }
 if (meta->vdr != ((void*)0)) {
  free(meta->vdr, M_MD_DDF);
  meta->vdr = ((void*)0);
 }
 if (meta->cr != ((void*)0)) {
  free(meta->cr, M_MD_DDF);
  meta->cr = ((void*)0);
 }
 if (meta->pdd != ((void*)0)) {
  free(meta->pdd, M_MD_DDF);
  meta->pdd = ((void*)0);
 }
 if (meta->bbm != ((void*)0)) {
  free(meta->bbm, M_MD_DDF);
  meta->bbm = ((void*)0);
 }
}
