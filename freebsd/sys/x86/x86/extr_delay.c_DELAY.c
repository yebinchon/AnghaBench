
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* early_delay ) (int) ;} ;


 int TSENTER () ;
 int TSEXIT () ;
 scalar_t__ delay_tc (int) ;
 TYPE_1__ init_ops ;
 int stub1 (int) ;

void
DELAY(int n)
{

 TSENTER();
 if (delay_tc(n)) {
  TSEXIT();
  return;
 }

 init_ops.early_delay(n);
 TSEXIT();
}
