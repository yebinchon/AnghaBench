
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int mh_flags; } ;


 int MHF_MBSS ;
 TYPE_1__* MWLPRIV (struct mwl_hal*) ;

int
mwl_hal_ismbsscapable(struct mwl_hal *mh)
{
 return (MWLPRIV(mh)->mh_flags & MHF_MBSS) != 0;
}
