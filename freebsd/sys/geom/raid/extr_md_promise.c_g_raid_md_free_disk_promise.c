
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_md_promise_perdisk {int pd_subdisks; struct g_raid_md_promise_perdisk** pd_meta; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_disk {int * d_md_data; } ;


 int M_MD_PROMISE ;
 int free (struct g_raid_md_promise_perdisk*,int ) ;

__attribute__((used)) static int
g_raid_md_free_disk_promise(struct g_raid_md_object *md,
    struct g_raid_disk *disk)
{
 struct g_raid_md_promise_perdisk *pd;
 int i;

 pd = (struct g_raid_md_promise_perdisk *)disk->d_md_data;
 for (i = 0; i < pd->pd_subdisks; i++) {
  if (pd->pd_meta[i] != ((void*)0)) {
   free(pd->pd_meta[i], M_MD_PROMISE);
   pd->pd_meta[i] = ((void*)0);
  }
 }
 free(pd, M_MD_PROMISE);
 disk->d_md_data = ((void*)0);
 return (0);
}
