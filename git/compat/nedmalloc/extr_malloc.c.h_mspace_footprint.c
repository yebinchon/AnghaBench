
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef int mspace ;
struct TYPE_5__ {size_t footprint; } ;


 int USAGE_ERROR_ACTION (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ ok_magic (TYPE_1__*) ;

size_t mspace_footprint(mspace msp) {
  size_t result = 0;
  mstate ms = (mstate)msp;
  if (ok_magic(ms)) {
    result = ms->footprint;
  }
  else {
    USAGE_ERROR_ACTION(ms,ms);
  }
  return result;
}
