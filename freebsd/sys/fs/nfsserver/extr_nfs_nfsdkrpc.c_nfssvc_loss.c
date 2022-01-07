
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int xp_sockref; } ;
typedef TYPE_1__ SVCXPRT ;


 int SVC_ACK (TYPE_1__*,scalar_t__*) ;
 int nfsrc_trimcache (int ,scalar_t__,int) ;

__attribute__((used)) static void
nfssvc_loss(SVCXPRT *xprt)
{
 uint32_t ack;

 ack = 0;
 SVC_ACK(xprt, &ack);
 nfsrc_trimcache(xprt->xp_sockref, ack, 1);
}
