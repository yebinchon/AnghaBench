
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_sii_perdisk {struct g_raid_md_sii_perdisk* pd_meta; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_disk {int * d_md_data; } ;


 int M_MD_SII ;
 int free (struct g_raid_md_sii_perdisk*,int ) ;

__attribute__((used)) static int
g_raid_md_free_disk_sii(struct g_raid_md_object *md,
    struct g_raid_disk *disk)
{
 struct g_raid_md_sii_perdisk *pd;

 pd = (struct g_raid_md_sii_perdisk *)disk->d_md_data;
 if (pd->pd_meta != ((void*)0)) {
  free(pd->pd_meta, M_MD_SII);
  pd->pd_meta = ((void*)0);
 }
 free(pd, M_MD_SII);
 disk->d_md_data = ((void*)0);
 return (0);
}
