
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* hts; } ;
struct TYPE_3__ {scalar_t__ hts_pid; } ;


 int SIGTERM ;
 int THREADS ;
 int kill (scalar_t__,int ) ;
 TYPE_2__* statep ;

__attribute__((used)) static void
killall(void)
{
 int i;

 for (i = 0; i < THREADS; i++) {
  if (statep->hts[i].hts_pid != 0)
   (void)kill(statep->hts[i].hts_pid, SIGTERM);
 }
}
