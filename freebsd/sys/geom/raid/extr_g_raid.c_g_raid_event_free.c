
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_event {int dummy; } ;


 int M_RAID ;
 int free (struct g_raid_event*,int ) ;

__attribute__((used)) static void
g_raid_event_free(struct g_raid_event *ep)
{

 free(ep, M_RAID);
}
