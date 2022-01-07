
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {scalar_t__ credits; scalar_t__ size; } ;
typedef int adapter_t ;


 int min (unsigned int,scalar_t__) ;
 int refill_fl (int *,struct sge_fl*,int ) ;

__attribute__((used)) static __inline void
__refill_fl(adapter_t *adap, struct sge_fl *fl)
{
 refill_fl(adap, fl, min(16U, fl->size - fl->credits));
}
