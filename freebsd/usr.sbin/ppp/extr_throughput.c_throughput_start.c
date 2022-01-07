
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct TYPE_3__ {scalar_t__ OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct pppThroughput {int SamplePeriod; int uptime; scalar_t__ downtime; int BestOctetsPerSecondTime; scalar_t__ BestOctetsPerSecond; TYPE_2__ out; TYPE_1__ in; scalar_t__ PacketsOut; scalar_t__ PacketsIn; scalar_t__ OctetsOut; scalar_t__ OctetsIn; scalar_t__ nSample; int Timer; } ;


 int throughput_restart (struct pppThroughput*,char const*,int) ;
 int time (int *) ;
 int timer_Stop (int *) ;

void
throughput_start(struct pppThroughput *t, const char *name, int rolling)
{
  int i;
  timer_Stop(&t->Timer);

  for (i = 0; i < t->SamplePeriod; i++)
    t->in.SampleOctets[i] = t->out.SampleOctets[i] = 0;
  t->nSample = 0;
  t->OctetsIn = t->OctetsOut = t->PacketsIn = t->PacketsOut = 0;
  t->in.OctetsPerSecond = t->out.OctetsPerSecond = t->BestOctetsPerSecond = 0;
  time(&t->BestOctetsPerSecondTime);
  t->downtime = 0;
  time(&t->uptime);
  throughput_restart(t, name, rolling);
}
