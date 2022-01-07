
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int mh_debug; } ;


 TYPE_1__* MWLPRIV (struct mwl_hal*) ;

void
mwl_hal_setdebug(struct mwl_hal *mh, int debug)
{
 MWLPRIV(mh)->mh_debug = debug;
}
