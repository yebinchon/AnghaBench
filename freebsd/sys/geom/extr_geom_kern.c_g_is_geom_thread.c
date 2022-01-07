
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 struct thread* g_down_td ;
 struct thread* g_event_td ;
 struct thread* g_up_td ;

int
g_is_geom_thread(struct thread *td)
{

 return (td == g_up_td || td == g_down_td || td == g_event_td);
}
