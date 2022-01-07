
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* fn ) (void*) ;void* data; } ;
struct pppThroughput {TYPE_1__ callback; } ;



void
throughput_callback(struct pppThroughput *t, void (*fn)(void *), void *data)
{
  t->callback.fn = fn;
  t->callback.data = data;
}
