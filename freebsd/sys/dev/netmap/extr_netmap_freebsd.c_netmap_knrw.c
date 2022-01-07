
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_priv_d {int dummy; } ;
struct knote {struct netmap_priv_d* kn_hook; } ;


 int netmap_poll (struct netmap_priv_d*,int,int *) ;

__attribute__((used)) static int
netmap_knrw(struct knote *kn, long hint, int events)
{
 struct netmap_priv_d *priv;
 int revents;

 if (hint != 0) {



  return 1;
 }


 priv = kn->kn_hook;
 revents = netmap_poll(priv, events, ((void*)0));

 return (events & revents) ? 1 : 0;
}
