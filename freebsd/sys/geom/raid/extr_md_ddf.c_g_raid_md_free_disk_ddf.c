
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_object {int dummy; } ;
struct g_raid_md_ddf_perdisk {int pd_meta; } ;
struct g_raid_disk {int * d_md_data; } ;


 int M_MD_DDF ;
 int ddf_meta_free (int *) ;
 int free (struct g_raid_md_ddf_perdisk*,int ) ;

__attribute__((used)) static int
g_raid_md_free_disk_ddf(struct g_raid_md_object *md,
    struct g_raid_disk *disk)
{
 struct g_raid_md_ddf_perdisk *pd;

 pd = (struct g_raid_md_ddf_perdisk *)disk->d_md_data;
 ddf_meta_free(&pd->pd_meta);
 free(pd, M_MD_DDF);
 disk->d_md_data = ((void*)0);
 return (0);
}
