
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ IAL_ADAPTER_T ;


 int hpt_intr_locked (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hpt_intr(void *arg)
{
 IAL_ADAPTER_T *pAdapter;

 pAdapter = arg;
 mtx_lock(&pAdapter->lock);
 hpt_intr_locked(pAdapter);
 mtx_unlock(&pAdapter->lock);
}
