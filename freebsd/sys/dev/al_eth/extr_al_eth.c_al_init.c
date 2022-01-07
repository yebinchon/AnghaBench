
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int dummy; } ;


 int al_init_locked (struct al_eth_adapter*) ;

__attribute__((used)) static void
al_init(void *arg)
{
 struct al_eth_adapter *adapter = arg;

 al_init_locked(adapter);
}
