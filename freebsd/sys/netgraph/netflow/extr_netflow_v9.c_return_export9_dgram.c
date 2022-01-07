
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct netflow_v9_packet_opt {int dummy; } ;
typedef int priv_p ;
typedef int * item_p ;
typedef TYPE_2__* fib_export_p ;
struct TYPE_5__ {struct netflow_v9_packet_opt* item9_opt; int * item9; } ;
struct TYPE_6__ {int export9_mtx; TYPE_1__ exp; } ;


 int export9_send (int ,TYPE_2__*,int *,struct netflow_v9_packet_opt*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
return_export9_dgram(priv_p priv, fib_export_p fe, item_p item, struct netflow_v9_packet_opt *t, int flags)
{





 mtx_lock(&fe->export9_mtx);
 if (fe->exp.item9 == ((void*)0)) {
  fe->exp.item9 = item;
  fe->exp.item9_opt = t;
  mtx_unlock(&fe->export9_mtx);
 } else {
  mtx_unlock(&fe->export9_mtx);
  export9_send(priv, fe, item, t, flags);
 }
}
