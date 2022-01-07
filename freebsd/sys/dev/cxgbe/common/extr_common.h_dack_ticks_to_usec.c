
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int dack_re; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {TYPE_2__ params; } ;


 unsigned int core_ticks_per_usec (struct adapter const*) ;

__attribute__((used)) static inline unsigned int dack_ticks_to_usec(const struct adapter *adap,
           unsigned int ticks)
{
 return (ticks << adap->params.tp.dack_re) / core_ticks_per_usec(adap);
}
