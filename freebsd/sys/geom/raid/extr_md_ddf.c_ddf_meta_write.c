
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct g_provider {int sectorsize; int mediasize; int name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct ddf_vdc_record {int CRC; } ;
struct ddf_meta {struct ddf_vdc_record* bbm; struct ddf_vdc_record* pdd; struct ddf_vdc_record* cr; struct ddf_vdc_record* vdr; struct ddf_vdc_record* pdr; struct ddf_vdc_record* cdr; struct ddf_vdc_record* hdr; } ;
typedef int off_t ;
struct TYPE_12__ {int CRC; } ;
struct TYPE_11__ {int CRC; } ;
struct TYPE_10__ {int bbmlog_section; int bbmlog_length; int pdd_section; int pdd_length; int cr_section; int Configuration_Record_Length; int vdr_section; int vdr_length; int pdr_section; int pdr_length; int cd_section; int cd_length; int CRC; int Header_Type; int Secondary_Header_LBA; int Primary_Header_LBA; } ;
struct TYPE_9__ {int CRC; } ;
struct TYPE_8__ {int CRC; } ;
struct TYPE_7__ {int CRC; } ;


 int DDF_HEADER_ANCHOR ;
 int DDF_HEADER_PRIMARY ;
 int DDF_HEADER_SECONDARY ;
 int GET16 (struct ddf_meta*,int ) ;
 int GET32 (struct ddf_meta*,int ) ;
 int GET64 (struct ddf_meta*,int ) ;
 int GETCRNUM (struct ddf_meta*) ;
 struct ddf_vdc_record* GETVDCPTR (struct ddf_meta*,int) ;
 int G_RAID_DEBUG (int,char*,int ,int) ;
 int SET32 (struct ddf_meta*,int ,int) ;
 int SET32D (struct ddf_meta*,int ,int) ;
 int SET8 (struct ddf_meta*,int ,int ) ;
 TYPE_6__* bbm ;
 TYPE_5__* cdr ;
 int crc32 (struct ddf_vdc_record*,int) ;
 int g_write_data (struct g_consumer*,int,struct ddf_vdc_record*,int) ;
 TYPE_4__* hdr ;
 TYPE_3__* pdd ;
 TYPE_2__* pdr ;
 TYPE_1__* vdr ;

__attribute__((used)) static int
ddf_meta_write(struct g_consumer *cp, struct ddf_meta *meta)
{
 struct g_provider *pp;
 struct ddf_vdc_record *vdc;
 off_t alba, plba, slba, lba;
 u_int ss, size;
 int error, i, num;

 pp = cp->provider;
 ss = pp->sectorsize;
 lba = alba = pp->mediasize / ss - 1;
 plba = GET64(meta, hdr->Primary_Header_LBA);
 slba = GET64(meta, hdr->Secondary_Header_LBA);

next:
 SET8(meta, hdr->Header_Type, (lba == alba) ? DDF_HEADER_ANCHOR :
     (lba == plba) ? DDF_HEADER_PRIMARY : DDF_HEADER_SECONDARY);
 SET32(meta, hdr->CRC, 0xffffffff);
 SET32(meta, hdr->CRC, crc32(meta->hdr, ss));
 error = g_write_data(cp, lba * ss, meta->hdr, ss);
 if (error != 0) {
err:
  G_RAID_DEBUG(1, "Cannot write metadata to %s (error=%d).",
      pp->name, error);
  if (lba != alba)
   goto done;
 }
 if (lba == alba) {
  lba = plba;
  goto next;
 }

 size = GET32(meta, hdr->cd_length) * ss;
 SET32(meta, cdr->CRC, 0xffffffff);
 SET32(meta, cdr->CRC, crc32(meta->cdr, size));
 error = g_write_data(cp, (lba + GET32(meta, hdr->cd_section)) * ss,
     meta->cdr, size);
 if (error != 0)
  goto err;

 size = GET32(meta, hdr->pdr_length) * ss;
 SET32(meta, pdr->CRC, 0xffffffff);
 SET32(meta, pdr->CRC, crc32(meta->pdr, size));
 error = g_write_data(cp, (lba + GET32(meta, hdr->pdr_section)) * ss,
     meta->pdr, size);
 if (error != 0)
  goto err;

 size = GET32(meta, hdr->vdr_length) * ss;
 SET32(meta, vdr->CRC, 0xffffffff);
 SET32(meta, vdr->CRC, crc32(meta->vdr, size));
 error = g_write_data(cp, (lba + GET32(meta, hdr->vdr_section)) * ss,
     meta->vdr, size);
 if (error != 0)
  goto err;

 size = GET16(meta, hdr->Configuration_Record_Length) * ss;
 num = GETCRNUM(meta);
 for (i = 0; i < num; i++) {
  vdc = GETVDCPTR(meta, i);
  SET32D(meta, vdc->CRC, 0xffffffff);
  SET32D(meta, vdc->CRC, crc32(vdc, size));
 }
 error = g_write_data(cp, (lba + GET32(meta, hdr->cr_section)) * ss,
     meta->cr, size * num);
 if (error != 0)
  goto err;

 size = GET32(meta, hdr->pdd_length) * ss;
 SET32(meta, pdd->CRC, 0xffffffff);
 SET32(meta, pdd->CRC, crc32(meta->pdd, size));
 error = g_write_data(cp, (lba + GET32(meta, hdr->pdd_section)) * ss,
     meta->pdd, size);
 if (error != 0)
  goto err;

 if (GET32(meta, hdr->bbmlog_length) != 0) {
  size = GET32(meta, hdr->bbmlog_length) * ss;
  SET32(meta, bbm->CRC, 0xffffffff);
  SET32(meta, bbm->CRC, crc32(meta->bbm, size));
  error = g_write_data(cp,
      (lba + GET32(meta, hdr->bbmlog_section)) * ss,
      meta->bbm, size);
  if (error != 0)
   goto err;
 }

done:
 if (lba == plba && slba != -1) {
  lba = slba;
  goto next;
 }

 return (error);
}
