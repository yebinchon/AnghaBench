
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_RAID_DEBUG (int,char*) ;
 int M_MD_INTEL ;
 int free (void*,int ) ;
 int g_raid_class ;
 int g_retaste (int *) ;

__attribute__((used)) static void
g_disk_md_intel_retaste(void *arg, int pending)
{

 G_RAID_DEBUG(1, "Array is not complete, trying to retaste.");
 g_retaste(&g_raid_class);
 free(arg, M_MD_INTEL);
}
