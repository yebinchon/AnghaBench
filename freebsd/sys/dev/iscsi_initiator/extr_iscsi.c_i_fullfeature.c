
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cdev {TYPE_1__* si_drv2; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ isc_session_t ;


 int ISC_FFPHASE ;
 int ic_init (TYPE_1__*) ;
 int ism_restart (TYPE_1__*) ;
 int sdebug (int,char*,int) ;

__attribute__((used)) static int
i_fullfeature(struct cdev *dev, int flag)
{
     isc_session_t *sp = dev->si_drv2;
     int error;

     sdebug(2, "flag=%d", flag);

     error = 0;
     switch(flag) {
     case 0:
         sp->flags &= ~ISC_FFPHASE;
         break;
     case 1:
         sp->flags |= ISC_FFPHASE;
         error = ic_init(sp);
         break;
     case 2:
         sp->flags |= ISC_FFPHASE;
         ism_restart(sp);
         break;
     }
     return error;
}
