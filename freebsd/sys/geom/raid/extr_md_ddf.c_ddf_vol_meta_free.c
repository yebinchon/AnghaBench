
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddf_vol_meta {int ** bvdc; int * vdc; int * vde; int * cdr; int * hdr; } ;


 int DDF_MAX_DISKS_HARD ;
 int M_MD_DDF ;
 int free (int *,int ) ;

__attribute__((used)) static void
ddf_vol_meta_free(struct ddf_vol_meta *meta)
{
 int i;

 if (meta->hdr != ((void*)0)) {
  free(meta->hdr, M_MD_DDF);
  meta->hdr = ((void*)0);
 }
 if (meta->cdr != ((void*)0)) {
  free(meta->cdr, M_MD_DDF);
  meta->cdr = ((void*)0);
 }
 if (meta->vde != ((void*)0)) {
  free(meta->vde, M_MD_DDF);
  meta->vde = ((void*)0);
 }
 if (meta->vdc != ((void*)0)) {
  free(meta->vdc, M_MD_DDF);
  meta->vdc = ((void*)0);
 }
 for (i = 0; i < DDF_MAX_DISKS_HARD; i++) {
  if (meta->bvdc[i] != ((void*)0)) {
   free(meta->bvdc[i], M_MD_DDF);
   meta->bvdc[i] = ((void*)0);
  }
 }
}
