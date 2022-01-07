
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {TYPE_1__* pi; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* adapter; } ;


 int INTR_OK ;
 int SLEEP_OK ;
 scalar_t__ begin_synchronized_op (struct adapter*,struct vi_info*,int,char*) ;
 int cxgbe_init_synchronized (struct vi_info*) ;
 int end_synchronized_op (struct adapter*,int ) ;

__attribute__((used)) static void
cxgbe_init(void *arg)
{
 struct vi_info *vi = arg;
 struct adapter *sc = vi->pi->adapter;

 if (begin_synchronized_op(sc, vi, SLEEP_OK | INTR_OK, "t4init") != 0)
  return;
 cxgbe_init_synchronized(vi);
 end_synchronized_op(sc, 0);
}
