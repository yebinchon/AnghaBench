
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmdargs {TYPE_3__* cx; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__* physical; } ;
struct TYPE_4__ {int lcp; } ;
struct TYPE_5__ {TYPE_1__ link; } ;


 scalar_t__ DATALINK_LCP ;
 int LogWARN ;
 scalar_t__ lcp_SendIdentification (int *) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
SendIdentification(struct cmdargs const *arg)
{
  if (arg->cx->state < DATALINK_LCP) {
    log_Printf(LogWARN, "sendident: link has not reached LCP\n");
    return 2;
  }
  return lcp_SendIdentification(&arg->cx->physical->link.lcp) ? 0 : 1;
}
