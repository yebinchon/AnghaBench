
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ddf_meta {TYPE_2__* vdr; } ;
struct TYPE_6__ {int Populated_VDEs; int Max_VDE_Supported; } ;
struct TYPE_5__ {TYPE_1__* entry; } ;
struct TYPE_4__ {int VD_GUID; } ;


 int GET16 (struct ddf_meta*,int ) ;
 int SET16 (struct ddf_meta*,int ,int) ;
 scalar_t__ isff (int ,int) ;
 scalar_t__ memcmp (int ,int *,int) ;
 TYPE_3__* vdr ;

__attribute__((used)) static int
ddf_meta_find_vd(struct ddf_meta *meta, uint8_t *GUID)
{
 int i;

 for (i = 0; i < GET16(meta, vdr->Populated_VDEs); i++) {
  if (GUID != ((void*)0)) {
   if (memcmp(meta->vdr->entry[i].VD_GUID, GUID, 24) == 0)
    return (i);
  } else
   if (isff(meta->vdr->entry[i].VD_GUID, 24))
    return (i);
 }
 if (GUID == ((void*)0)) {
  if (i >= GET16(meta, vdr->Max_VDE_Supported))
   return (-1);
  SET16(meta, vdr->Populated_VDEs, i + 1);
  return (i);
 }
 return (-1);
}
