
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * SampleOctets; } ;
struct TYPE_3__ {int * SampleOctets; } ;
struct pppThroughput {TYPE_2__ out; TYPE_1__ in; } ;


 int free (int *) ;
 int throughput_stop (struct pppThroughput*) ;

void
throughput_destroy(struct pppThroughput *t)
{
  if (t && t->in.SampleOctets) {
    throughput_stop(t);
    free(t->in.SampleOctets);
    free(t->out.SampleOctets);
    t->in.SampleOctets = ((void*)0);
    t->out.SampleOctets = ((void*)0);
  }
}
