
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int ADAPTER_LOCK (struct adapter*) ;
 int ADAPTER_LOCK_ASSERT_NOTOWNED (struct adapter*) ;
 int cxgb_init_locked (struct port_info*) ;

__attribute__((used)) static void
cxgb_init(void *arg)
{
 struct port_info *p = arg;
 struct adapter *sc = p->adapter;

 ADAPTER_LOCK(sc);
 cxgb_init_locked(p);
 ADAPTER_LOCK_ASSERT_NOTOWNED(sc);
}
