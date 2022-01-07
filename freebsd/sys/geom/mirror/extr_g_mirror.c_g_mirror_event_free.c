
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_event {int dummy; } ;


 int M_MIRROR ;
 int free (struct g_mirror_event*,int ) ;

__attribute__((used)) static void
g_mirror_event_free(struct g_mirror_event *ep)
{

 free(ep, M_MIRROR);
}
