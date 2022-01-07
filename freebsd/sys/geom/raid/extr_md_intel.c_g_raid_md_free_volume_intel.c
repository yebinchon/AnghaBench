
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int * v_md_data; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_intel_pervolume {int dummy; } ;


 int M_MD_INTEL ;
 int free (struct g_raid_md_intel_pervolume*,int ) ;

__attribute__((used)) static int
g_raid_md_free_volume_intel(struct g_raid_md_object *md,
    struct g_raid_volume *vol)
{
 struct g_raid_md_intel_pervolume *pv;

 pv = (struct g_raid_md_intel_pervolume *)vol->v_md_data;
 free(pv, M_MD_INTEL);
 vol->v_md_data = ((void*)0);
 return (0);
}
