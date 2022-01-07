
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int ppc_lock; } ;


 TYPE_1__* DEVTOSOFTC (int ) ;
 int MA_OWNED ;
 int mtx_assert_ (int ,int ,char const*,int) ;

void
_ppb_assert_locked(device_t bus, const char *file, int line)
{

 mtx_assert_(DEVTOSOFTC(bus)->ppc_lock, MA_OWNED, file, line);
}
