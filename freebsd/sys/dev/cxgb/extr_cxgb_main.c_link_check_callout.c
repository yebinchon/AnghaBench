
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int link_check_task; int port_id; struct adapter* adapter; } ;
struct adapter {int tq; int open_device_map; } ;


 int isset (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
link_check_callout(void *arg)
{
 struct port_info *pi = arg;
 struct adapter *sc = pi->adapter;

 if (!isset(&sc->open_device_map, pi->port_id))
  return;

 taskqueue_enqueue(sc->tq, &pi->link_check_task);
}
