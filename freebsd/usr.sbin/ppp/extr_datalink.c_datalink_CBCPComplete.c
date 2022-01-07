
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct datalink {TYPE_3__* physical; } ;
struct TYPE_4__ {int fsm; } ;
struct TYPE_5__ {TYPE_1__ lcp; } ;
struct TYPE_6__ {TYPE_2__ link; } ;


 int DATALINK_LCP ;
 int datalink_AuthReInit (struct datalink*) ;
 int datalink_NewState (struct datalink*,int ) ;
 int fsm_Close (int *) ;

void
datalink_CBCPComplete(struct datalink *dl)
{
  datalink_NewState(dl, DATALINK_LCP);
  datalink_AuthReInit(dl);
  fsm_Close(&dl->physical->link.lcp.fsm);
}
