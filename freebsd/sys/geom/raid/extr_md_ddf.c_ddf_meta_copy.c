
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ddf_meta {int sectorsize; int * bbm; int * pdd; int * cr; int * vdr; int * pdr; int * cdr; int * hdr; int bigendian; } ;
struct TYPE_2__ {int bbmlog_length; int pdd_length; int cr_length; int vdr_length; int pdr_length; int cd_length; } ;


 int GET32 (struct ddf_meta*,int ) ;
 int M_MD_DDF ;
 int M_WAITOK ;
 TYPE_1__* hdr ;
 void* malloc (int,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
ddf_meta_copy(struct ddf_meta *dst, struct ddf_meta *src)
{
 u_int ss;

 dst->bigendian = src->bigendian;
 ss = dst->sectorsize = src->sectorsize;
 dst->hdr = malloc(ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->hdr, src->hdr, ss);
 dst->cdr = malloc(GET32(src, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->cdr, src->cdr, GET32(src, hdr->cd_length) * ss);
 dst->pdr = malloc(GET32(src, hdr->pdr_length) * ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->pdr, src->pdr, GET32(src, hdr->pdr_length) * ss);
 dst->vdr = malloc(GET32(src, hdr->vdr_length) * ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->vdr, src->vdr, GET32(src, hdr->vdr_length) * ss);
 dst->cr = malloc(GET32(src, hdr->cr_length) * ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->cr, src->cr, GET32(src, hdr->cr_length) * ss);
 dst->pdd = malloc(GET32(src, hdr->pdd_length) * ss, M_MD_DDF, M_WAITOK);
 memcpy(dst->pdd, src->pdd, GET32(src, hdr->pdd_length) * ss);
 if (src->bbm != ((void*)0)) {
  dst->bbm = malloc(GET32(src, hdr->bbmlog_length) * ss, M_MD_DDF, M_WAITOK);
  memcpy(dst->bbm, src->bbm, GET32(src, hdr->bbmlog_length) * ss);
 }
}
