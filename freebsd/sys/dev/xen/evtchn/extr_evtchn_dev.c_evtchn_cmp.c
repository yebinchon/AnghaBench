
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int port; } ;



__attribute__((used)) static int
evtchn_cmp(struct user_evtchn *u1, struct user_evtchn *u2)
{

 return (u1->port - u2->port);
}
