
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low; int high; } ;
struct adapter {TYPE_1__ bypass; } ;


 scalar_t__ atomic_cmpset_int (int *,int,int ) ;
 int usec_delay (int) ;

__attribute__((used)) static void
ixgbe_bypass_mutex_clear(struct adapter *adapter)
{
 while (atomic_cmpset_int(&adapter->bypass.high, 1, 0) == 0)
  usec_delay(6000);
 while (atomic_cmpset_int(&adapter->bypass.low, 1, 0) == 0)
  usec_delay(6000);
 return;
}
