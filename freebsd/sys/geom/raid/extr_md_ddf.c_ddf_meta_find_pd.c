
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ddf_meta {TYPE_3__* pdr; } ;
struct TYPE_8__ {int Populated_PDEs; int Max_PDE_Supported; TYPE_1__* entry; } ;
struct TYPE_7__ {TYPE_2__* entry; } ;
struct TYPE_6__ {int PD_GUID; } ;
struct TYPE_5__ {int PD_Reference; } ;


 int GET16 (struct ddf_meta*,int ) ;
 int GET32 (struct ddf_meta*,int ) ;
 int SET16 (struct ddf_meta*,int ,int) ;
 scalar_t__ isff (int ,int) ;
 scalar_t__ memcmp (int ,int *,int) ;
 TYPE_4__* pdr ;

__attribute__((used)) static int
ddf_meta_find_pd(struct ddf_meta *meta, uint8_t *GUID, uint32_t PD_Reference)
{
 int i;

 for (i = 0; i < GET16(meta, pdr->Populated_PDEs); i++) {
  if (GUID != ((void*)0)) {
   if (memcmp(meta->pdr->entry[i].PD_GUID, GUID, 24) == 0)
    return (i);
  } else if (PD_Reference != 0xffffffff) {
   if (GET32(meta, pdr->entry[i].PD_Reference) == PD_Reference)
    return (i);
  } else
   if (isff(meta->pdr->entry[i].PD_GUID, 24))
    return (i);
 }
 if (GUID == ((void*)0) && PD_Reference == 0xffffffff) {
  if (i >= GET16(meta, pdr->Max_PDE_Supported))
   return (-1);
  SET16(meta, pdr->Populated_PDEs, i + 1);
  return (i);
 }
 return (-1);
}
