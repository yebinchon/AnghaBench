
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct TYPE_3__ {int tre; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {TYPE_2__ params; } ;


 int core_ticks_per_usec (struct adapter const*) ;

__attribute__((used)) static inline u_int tcp_ticks_to_us(const struct adapter *adap, u_int ticks)
{
 return ((uint64_t)ticks << adap->params.tp.tre) /
     core_ticks_per_usec(adap);
}
