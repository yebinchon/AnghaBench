
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int priv_p ;
typedef int * item_p ;
typedef TYPE_2__* fib_export_p ;
struct TYPE_5__ {int * item; } ;
struct TYPE_6__ {int export_mtx; TYPE_1__ exp; } ;


 int export_send (int ,TYPE_2__*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
return_export_dgram(priv_p priv, fib_export_p fe, item_p item, int flags)
{






 mtx_lock(&fe->export_mtx);
 if (fe->exp.item == ((void*)0)) {
  fe->exp.item = item;
  mtx_unlock(&fe->export_mtx);
 } else {
  mtx_unlock(&fe->export_mtx);
  export_send(priv, fe, item, flags);
 }
}
