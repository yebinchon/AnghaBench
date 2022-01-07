
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ddf_vdc_record {int VD_GUID; int Signature; } ;
struct ddf_meta {int dummy; } ;


 scalar_t__ DDF_VDCR_SIGNATURE ;
 scalar_t__ GET32D (struct ddf_meta*,int ) ;
 int GETCRNUM (struct ddf_meta*) ;
 struct ddf_vdc_record* GETVDCPTR (struct ddf_meta*,int) ;
 scalar_t__ memcmp (int ,int *,int) ;

__attribute__((used)) static int
ddf_meta_count_vdc(struct ddf_meta *meta, uint8_t *GUID)
{
 struct ddf_vdc_record *vdc;
 int i, num, cnt;

 cnt = 0;
 num = GETCRNUM(meta);
 for (i = 0; i < num; i++) {
  vdc = GETVDCPTR(meta, i);
  if (GET32D(meta, vdc->Signature) != DDF_VDCR_SIGNATURE)
   continue;
  if (GUID == ((void*)0) || memcmp(vdc->VD_GUID, GUID, 24) == 0)
   cnt++;
 }
 return (cnt);
}
