
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {char* d_name; char* d_unit; int d_flags; int d_ident; int d_init_level; int * d_geom; int d_sectorsize; int * d_devstat; int * d_strategy; } ;


 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_MAX ;
 int DEVSTAT_TYPE_DIRECT ;
 int DISKFLAG_RESERVED ;
 int DISK_INIT_NONE ;
 int DISK_VERSION ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int SPECNAMELEN ;
 int * devstat_new_entry (scalar_t__*,char*,int ,int ,int ,int ) ;
 int g_disk_create ;
 int g_disk_ident_adjust (int ,int) ;
 int g_post_event (int ,struct disk*,int ,struct disk*,int *) ;
 int printf (char*,char*,char*,...) ;
 int strlen (scalar_t__*) ;

void
disk_create(struct disk *dp, int version)
{

 if (version != DISK_VERSION) {
  printf("WARNING: Attempt to add disk %s%d %s",
      dp->d_name, dp->d_unit,
      " using incompatible ABI version of disk(9)\n");
  printf("WARNING: Ignoring disk %s%d\n",
      dp->d_name, dp->d_unit);
  return;
 }
 if (dp->d_flags & DISKFLAG_RESERVED) {
  printf("WARNING: Attempt to add non-MPSAFE disk %s%d\n",
      dp->d_name, dp->d_unit);
  printf("WARNING: Ignoring disk %s%d\n",
      dp->d_name, dp->d_unit);
  return;
 }
 KASSERT(dp->d_strategy != ((void*)0), ("disk_create need d_strategy"));
 KASSERT(dp->d_name != ((void*)0), ("disk_create need d_name"));
 KASSERT(*dp->d_name != 0, ("disk_create need d_name"));
 KASSERT(strlen(dp->d_name) < SPECNAMELEN - 4, ("disk name too long"));
 if (dp->d_devstat == ((void*)0))
  dp->d_devstat = devstat_new_entry(dp->d_name, dp->d_unit,
      dp->d_sectorsize, DEVSTAT_ALL_SUPPORTED,
      DEVSTAT_TYPE_DIRECT, DEVSTAT_PRIORITY_MAX);
 dp->d_geom = ((void*)0);

 dp->d_init_level = DISK_INIT_NONE;

 g_disk_ident_adjust(dp->d_ident, sizeof(dp->d_ident));
 g_post_event(g_disk_create, dp, M_WAITOK, dp, ((void*)0));
}
