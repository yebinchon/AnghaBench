
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int tick; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int PORT_LOCK_ASSERT_OWNED (struct port_info*) ;
 int callout_schedule (int *,int ) ;
 int cxgbe_refresh_stats (struct adapter*,struct port_info*) ;
 int hz ;

__attribute__((used)) static void
cxgbe_tick(void *arg)
{
 struct port_info *pi = arg;
 struct adapter *sc = pi->adapter;

 PORT_LOCK_ASSERT_OWNED(pi);
 cxgbe_refresh_stats(sc, pi);

 callout_schedule(&pi->tick, hz);
}
