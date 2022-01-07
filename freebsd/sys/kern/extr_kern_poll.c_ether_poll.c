
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifp; int (* handler ) (int ,int ,int) ;} ;


 int POLL_ONLY ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int poll_each_burst ;
 int poll_handlers ;
 int poll_mtx ;
 TYPE_1__* pr ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static void
ether_poll(int count)
{
 int i;

 mtx_lock(&poll_mtx);

 if (count > poll_each_burst)
  count = poll_each_burst;

 for (i = 0 ; i < poll_handlers ; i++)
  pr[i].handler(pr[i].ifp, POLL_ONLY, count);

 mtx_unlock(&poll_mtx);
}
