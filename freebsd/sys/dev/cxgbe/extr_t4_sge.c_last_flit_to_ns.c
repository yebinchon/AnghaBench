
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int UINT64_MAX ;
 int be64toh (int) ;

__attribute__((used)) static inline uint64_t
last_flit_to_ns(struct adapter *sc, uint64_t lf)
{
 uint64_t n = be64toh(lf) & 0xfffffffffffffff;

 if (n > UINT64_MAX / 1000000)
  return (n / sc->params.vpd.cclk * 1000000);
 else
  return (n * 1000000 / sc->params.vpd.cclk);
}
