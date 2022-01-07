
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int item_p ;
typedef TYPE_2__* hpriv_p ;
typedef int hook_p ;
struct TYPE_5__ {int enabled; } ;
struct TYPE_6__ {int mtx; TYPE_1__ conf; } ;


 int ENXIO ;
 int MA_NOTOWNED ;
 int NG_FREE_ITEM (int ) ;
 TYPE_2__* NG_HOOK_PRIVATE (int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int ng_pptpgre_xmit (TYPE_2__* const,int ) ;

__attribute__((used)) static int
ng_pptpgre_rcvdata(hook_p hook, item_p item)
{
 const hpriv_p hpriv = NG_HOOK_PRIVATE(hook);
 int rval;


 if (!hpriv->conf.enabled) {
  NG_FREE_ITEM(item);
  return (ENXIO);
 }

 mtx_lock(&hpriv->mtx);

 rval = ng_pptpgre_xmit(hpriv, item);

 mtx_assert(&hpriv->mtx, MA_NOTOWNED);

 return (rval);
}
