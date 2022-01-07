
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_event {int dummy; } ;


 int M_RAID3 ;
 int free (struct g_raid3_event*,int ) ;

__attribute__((used)) static void
g_raid3_event_free(struct g_raid3_event *ep)
{

 free(ep, M_RAID3);
}
