
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_8__ {TYPE_3__* bundle; int link; } ;
struct ccp {TYPE_4__ fsm; } ;
struct TYPE_5__ {int active; } ;
struct TYPE_6__ {TYPE_1__ mp; } ;
struct TYPE_7__ {TYPE_2__ ncp; } ;


 int PROTO_COMPD ;
 int PROTO_ICOMPD ;
 int link2physical (int ) ;

u_short
ccp_Proto(struct ccp *ccp)
{
  return !link2physical(ccp->fsm.link) || !ccp->fsm.bundle->ncp.mp.active ?
         PROTO_COMPD : PROTO_ICOMPD;
}
