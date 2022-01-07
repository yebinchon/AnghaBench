
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int EBUSY ;
 int EINVAL ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int * LIST_FIRST (int *) ;




 int ald_mtx ;
 int ald_queues ;
 int ald_shutdown (int *,int ) ;
 int ald_shutingdown ;
 int alq_eventhandler_tag ;
 int mtx_destroy (int *) ;
 int shutdown_pre_sync ;

__attribute__((used)) static int
alq_load_handler(module_t mod, int what, void *arg)
{
 int ret;

 ret = 0;

 switch (what) {
 case 131:
 case 129:
  break;

 case 130:
  ALD_LOCK();

  if (LIST_FIRST(&ald_queues) == ((void*)0)) {
   ald_shutingdown = 1;
   ALD_UNLOCK();
   EVENTHANDLER_DEREGISTER(shutdown_pre_sync,
       alq_eventhandler_tag);
   ald_shutdown(((void*)0), 0);
   mtx_destroy(&ald_mtx);
  } else {
   ALD_UNLOCK();
   ret = EBUSY;
  }
  break;

 case 128:

  if (ald_shutingdown == 0)
   ret = EBUSY;
  break;

 default:
  ret = EINVAL;
  break;
 }

 return (ret);
}
