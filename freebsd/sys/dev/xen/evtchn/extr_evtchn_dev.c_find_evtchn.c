
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int port; } ;
struct per_user_data {int evtchns; } ;
typedef int evtchn_port_t ;


 struct user_evtchn* RB_FIND (int ,int *,struct user_evtchn*) ;
 int evtchn_tree ;

__attribute__((used)) static struct user_evtchn *
find_evtchn(struct per_user_data *u, evtchn_port_t port)
{
 struct user_evtchn tmp = {
  .port = port,
 };

 return (RB_FIND(evtchn_tree, &u->evtchns, &tmp));
}
