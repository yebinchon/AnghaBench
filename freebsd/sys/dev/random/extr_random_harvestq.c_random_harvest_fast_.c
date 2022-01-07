
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u_int ;
struct TYPE_3__ {size_t pos; int * buf; } ;
struct TYPE_4__ {TYPE_1__ hc_entropy_fast_accumulator; } ;


 size_t RANDOM_ACCUM_MAX ;
 scalar_t__ get_cyclecount () ;
 TYPE_2__ harvest_context ;
 int jenkins_hash (void const*,size_t,int ) ;

void
random_harvest_fast_(const void *entropy, u_int size)
{
 u_int pos;

 pos = harvest_context.hc_entropy_fast_accumulator.pos;
 harvest_context.hc_entropy_fast_accumulator.buf[pos] ^= jenkins_hash(entropy, size, (uint32_t)get_cyclecount());
 harvest_context.hc_entropy_fast_accumulator.pos = (pos + 1)%RANDOM_ACCUM_MAX;
}
