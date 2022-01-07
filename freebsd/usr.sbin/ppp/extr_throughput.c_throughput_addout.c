
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppThroughput {long long OctetsOut; int PacketsOut; } ;



void
throughput_addout(struct pppThroughput *t, long long n)
{
  t->OctetsOut += n;
  t->PacketsOut++;
}
