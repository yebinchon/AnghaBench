
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cclk; } ;
struct TYPE_6__ {TYPE_1__ vpd; } ;
struct TYPE_7__ {TYPE_2__ params; } ;
typedef TYPE_3__ adapter_t ;



__attribute__((used)) static inline unsigned int core_ticks_per_usec(const adapter_t *adap)
{
 return adap->params.vpd.cclk / 1000;
}
