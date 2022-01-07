
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_h4_info_p ;
typedef int hook_p ;
struct TYPE_2__ {int tp; } ;


 int Giant ;
 int NG_NODE_PRIVATE (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_h4_start (int ) ;

__attribute__((used)) static void
ng_h4_process_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 ng_h4_info_p sc = (ng_h4_info_p) NG_NODE_PRIVATE(node);

 mtx_lock(&Giant);
 ng_h4_start(sc->tp);
 mtx_unlock(&Giant);
}
