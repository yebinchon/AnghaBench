
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chipid; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_T4 ;

__attribute__((used)) static inline int is_t4(struct adapter *adap)
{
 return adap->params.chipid == CHELSIO_T4;
}
