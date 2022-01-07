
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* hwd; } ;
struct TYPE_3__ {scalar_t__ hwd_pid; } ;


 int SIGTERM ;
 int kill (scalar_t__,int ) ;
 int numthreads ;
 TYPE_2__* statep ;

__attribute__((used)) static void
killall(void)
{
 int i;

 for (i = 0; i < numthreads; i++) {
  if (statep->hwd[i].hwd_pid != 0)
   kill(statep->hwd[i].hwd_pid, SIGTERM);
 }
}
