
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct ddf_vol_meta {int sectorsize; struct ddf_vdc_record** bvdc; struct ddf_vdc_record* vdc; struct ddf_vdc_record* vde; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; int bigendian; TYPE_1__* vdr; } ;
struct ddf_vdc_record {int Sequence_Number; int Secondary_Element_Seq; int Secondary_Element_Count; } ;
struct ddf_vd_entry {int Sequence_Number; int Secondary_Element_Seq; int Secondary_Element_Count; } ;
struct ddf_meta {int sectorsize; struct ddf_vdc_record** bvdc; struct ddf_vdc_record* vdc; struct ddf_vdc_record* vde; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; int bigendian; TYPE_1__* vdr; } ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {int Sequence_Number; } ;
struct TYPE_5__ {int cd_length; int Configuration_Record_Length; } ;
struct TYPE_4__ {struct ddf_vdc_record* entry; } ;


 int GET16 (struct ddf_vol_meta*,int ) ;
 int GET32 (struct ddf_vol_meta*,int ) ;
 int GET32D (struct ddf_vol_meta*,int ) ;
 int GET8D (struct ddf_vol_meta*,int ) ;
 int M_MD_DDF ;
 int M_WAITOK ;
 TYPE_3__** bvdc ;
 size_t ddf_meta_find_vd (struct ddf_vol_meta*,int *) ;
 struct ddf_vdc_record* ddf_meta_find_vdc (struct ddf_vol_meta*,int *) ;
 int free (struct ddf_vdc_record*,int ) ;
 TYPE_2__* hdr ;
 void* malloc (int,int ,int ) ;
 int memcpy (struct ddf_vdc_record*,struct ddf_vdc_record*,int) ;

__attribute__((used)) static void
ddf_vol_meta_update(struct ddf_vol_meta *dst, struct ddf_meta *src,
    uint8_t *GUID, int started)
{
 struct ddf_vd_entry *vde;
 struct ddf_vdc_record *vdc;
 int vnew, bvnew, bvd, size;
 u_int ss;

 vde = &src->vdr->entry[ddf_meta_find_vd(src, GUID)];
 vdc = ddf_meta_find_vdc(src, GUID);
 if (GET8D(src, vdc->Secondary_Element_Count) == 1)
  bvd = 0;
 else
  bvd = GET8D(src, vdc->Secondary_Element_Seq);
 size = GET16(src, hdr->Configuration_Record_Length) * src->sectorsize;

 if (dst->vdc == ((void*)0) ||
     (!started && ((int32_t)(GET32D(src, vdc->Sequence_Number) -
     GET32(dst, vdc->Sequence_Number))) > 0))
  vnew = 1;
 else
  vnew = 0;

 if (dst->bvdc[bvd] == ((void*)0) ||
     (!started && ((int32_t)(GET32D(src, vdc->Sequence_Number) -
     GET32(dst, bvdc[bvd]->Sequence_Number))) > 0))
  bvnew = 1;
 else
  bvnew = 0;

 if (vnew) {
  dst->bigendian = src->bigendian;
  ss = dst->sectorsize = src->sectorsize;
  if (dst->hdr != ((void*)0))
   free(dst->hdr, M_MD_DDF);
  dst->hdr = malloc(ss, M_MD_DDF, M_WAITOK);
  memcpy(dst->hdr, src->hdr, ss);
  if (dst->cdr != ((void*)0))
   free(dst->cdr, M_MD_DDF);
  dst->cdr = malloc(GET32(src, hdr->cd_length) * ss, M_MD_DDF, M_WAITOK);
  memcpy(dst->cdr, src->cdr, GET32(src, hdr->cd_length) * ss);
  if (dst->vde != ((void*)0))
   free(dst->vde, M_MD_DDF);
  dst->vde = malloc(sizeof(struct ddf_vd_entry), M_MD_DDF, M_WAITOK);
  memcpy(dst->vde, vde, sizeof(struct ddf_vd_entry));
  if (dst->vdc != ((void*)0))
   free(dst->vdc, M_MD_DDF);
  dst->vdc = malloc(size, M_MD_DDF, M_WAITOK);
  memcpy(dst->vdc, vdc, size);
 }
 if (bvnew) {
  if (dst->bvdc[bvd] != ((void*)0))
   free(dst->bvdc[bvd], M_MD_DDF);
  dst->bvdc[bvd] = malloc(size, M_MD_DDF, M_WAITOK);
  memcpy(dst->bvdc[bvd], vdc, size);
 }
}
