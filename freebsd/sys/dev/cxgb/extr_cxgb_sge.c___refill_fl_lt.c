
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sge_fl {scalar_t__ size; scalar_t__ credits; } ;
typedef int adapter_t ;


 int min (int,scalar_t__) ;
 int refill_fl (int *,struct sge_fl*,int ) ;

__attribute__((used)) static __inline void
__refill_fl_lt(adapter_t *adap, struct sge_fl *fl, int max)
{
 uint32_t reclaimable = fl->size - fl->credits;

 if (reclaimable > 0)
  refill_fl(adap, fl, min(max, reclaimable));
}
