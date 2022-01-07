
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* hpriv_p ;
typedef int hook_p ;
struct TYPE_3__ {int mtx; } ;


 int MA_NOTOWNED ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int ng_pptpgre_xmit (TYPE_1__* const,int *) ;

__attribute__((used)) static void
ng_pptpgre_send_ack_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const hpriv_p hpriv = arg1;

 mtx_lock(&hpriv->mtx);

   ng_pptpgre_xmit(hpriv, ((void*)0));
 mtx_assert(&hpriv->mtx, MA_NOTOWNED);
}
