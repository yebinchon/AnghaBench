
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {int lock; int eh; } ;
typedef TYPE_1__ IAL_ADAPTER_T ;


 int DELAY (int) ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int FlushAdapter (TYPE_1__*) ;
 TYPE_1__* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shutdown_final ;

__attribute__((used)) static int
hpt_shutdown(device_t dev)
{
  IAL_ADAPTER_T *pAdapter;

  pAdapter = device_get_softc(dev);

  EVENTHANDLER_DEREGISTER(shutdown_final, pAdapter->eh);
  mtx_lock(&pAdapter->lock);
  FlushAdapter(pAdapter);
  mtx_unlock(&pAdapter->lock);


  DELAY(1000 * 1000 * 5);
  return 0;
}
