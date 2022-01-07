
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int name; } ;


 int LogLCP ;
 int log_Printf (int ,char*,int ) ;

__attribute__((used)) static void
LcpLayerFinish(struct fsm *fp)
{

  log_Printf(LogLCP, "%s: LayerFinish\n", fp->link->name);
}
