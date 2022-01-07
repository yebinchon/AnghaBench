
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_4__ {int handle; int seqRetries; int remote_seq; int local_seq; } ;


 int CISCO_KEEPALIVE_REQ ;
 int KEEPALIVE_SECS ;
 int NGM_LINK_IS_DOWN ;
 int cisco_notify (TYPE_1__* const,int ) ;
 int cisco_send (TYPE_1__* const,int ,int ,int ) ;
 int hz ;
 int ng_callout (int *,int ,int *,int,void (*) (int ,int ,void*,int),void*,int ) ;

__attribute__((used)) static void
cisco_keepalive(node_p node, hook_p hook, void *arg1, int arg2)
{
 const sc_p sc = arg1;

 cisco_send(sc, CISCO_KEEPALIVE_REQ, sc->local_seq, sc->remote_seq);
 if (sc->seqRetries++ > 1)
  cisco_notify(sc, NGM_LINK_IS_DOWN);
 ng_callout(&sc->handle, node, ((void*)0), (hz * KEEPALIVE_SECS),
     &cisco_keepalive, (void *)sc, 0);
}
