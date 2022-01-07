
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo_flags; } ;
struct rmlock {int rm_lock_mtx; int rm_lock_sx; TYPE_1__ lock_object; } ;


 int LO_SLEEPABLE ;
 int mtx_owned (int *) ;
 int sx_xlocked (int *) ;

int
rm_wowned(const struct rmlock *rm)
{

 if (rm->lock_object.lo_flags & LO_SLEEPABLE)
  return (sx_xlocked(&rm->rm_lock_sx));
 else
  return (mtx_owned(&rm->rm_lock_mtx));
}
