
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int data; int (* fn ) (int ) ;} ;
struct TYPE_5__ {unsigned long long* SampleOctets; unsigned long long OctetsPerSecond; } ;
struct TYPE_4__ {unsigned long long* SampleOctets; unsigned long long OctetsPerSecond; } ;
struct pppThroughput {int SamplePeriod; size_t nSample; unsigned long long OctetsIn; unsigned long long OctetsOut; unsigned long long BestOctetsPerSecond; int Timer; TYPE_3__ callback; int BestOctetsPerSecondTime; TYPE_2__ out; TYPE_1__ in; } ;


 int stub1 (int ) ;
 int throughput_uptime (struct pppThroughput*) ;
 int time (int *) ;
 int timer_Start (int *) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
throughput_sampler(void *v)
{
  struct pppThroughput *t = (struct pppThroughput *)v;
  unsigned long long old;
  int uptime, divisor;
  unsigned long long octets;

  timer_Stop(&t->Timer);

  uptime = throughput_uptime(t);
  divisor = uptime < t->SamplePeriod ? uptime + 1 : t->SamplePeriod;

  old = t->in.SampleOctets[t->nSample];
  t->in.SampleOctets[t->nSample] = t->OctetsIn;
  t->in.OctetsPerSecond = (t->in.SampleOctets[t->nSample] - old) / divisor;

  old = t->out.SampleOctets[t->nSample];
  t->out.SampleOctets[t->nSample] = t->OctetsOut;
  t->out.OctetsPerSecond = (t->out.SampleOctets[t->nSample] - old) / divisor;

  octets = t->in.OctetsPerSecond + t->out.OctetsPerSecond;
  if (t->BestOctetsPerSecond < octets) {
    t->BestOctetsPerSecond = octets;
    time(&t->BestOctetsPerSecondTime);
  }

  if (++t->nSample == t->SamplePeriod)
    t->nSample = 0;

  if (t->callback.fn != ((void*)0) && uptime >= t->SamplePeriod)
    (*t->callback.fn)(t->callback.data);

  timer_Start(&t->Timer);
}
