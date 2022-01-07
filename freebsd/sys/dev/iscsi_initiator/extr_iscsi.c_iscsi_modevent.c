
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_2__ {int nsess; } ;


 int LOG_ERR ;




 int debug_called (int) ;
 TYPE_1__* isc ;
 int iscsi_start () ;
 int iscsi_stop () ;
 int log (int ,char*) ;
 int xdebug (char*,int) ;

__attribute__((used)) static int
iscsi_modevent(module_t mod, int what, void *arg)
{
     int error = 0;

     debug_called(8);

     switch(what) {
     case 131:
   error = iscsi_start();
   break;

     case 130:
   if(isc->nsess) {
        xdebug("iscsi module busy(nsess=%d), cannot unload", isc->nsess);
        log(LOG_ERR, "iscsi module busy, cannot unload");
   }
   return isc->nsess;

     case 129:
   break;

     case 128:
   iscsi_stop();
   break;

     default:
   break;
     }
     return (error);
}
