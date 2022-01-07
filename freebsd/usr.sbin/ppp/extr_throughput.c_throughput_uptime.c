
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_4__ {scalar_t__* SampleOctets; } ;
struct TYPE_3__ {scalar_t__* SampleOctets; } ;
struct pppThroughput {scalar_t__ downtime; scalar_t__ uptime; int SamplePeriod; scalar_t__ nSample; TYPE_2__ out; TYPE_1__ in; } ;


 scalar_t__ time (int *) ;

int
throughput_uptime(struct pppThroughput *t)
{
  time_t downat;

  downat = t->downtime ? t->downtime : time(((void*)0));
  if (t->uptime && downat < t->uptime) {

    int i;

    for (i = 0; i < t->SamplePeriod; i++)
      t->in.SampleOctets[i] = t->out.SampleOctets[i] = 0;
    t->nSample = 0;
    t->uptime = downat;
  }
  return t->uptime ? downat - t->uptime : 0;
}
