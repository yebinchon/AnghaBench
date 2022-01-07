
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppThroughput {long long OctetsIn; int PacketsIn; } ;



void
throughput_addin(struct pppThroughput *t, long long n)
{
  t->OctetsIn += n;
  t->PacketsIn++;
}
