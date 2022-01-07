
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstate ;
typedef int mspace ;


 int POSTACTION (int ) ;
 int PREACTION (int ) ;
 int disable_mmap (int ) ;
 int enable_mmap (int ) ;
 scalar_t__ use_mmap (int ) ;

int mspace_mmap_large_chunks(mspace msp, int enable) {
  int ret = 0;
  mstate ms = (mstate)msp;
  if (!PREACTION(ms)) {
    if (use_mmap(ms))
      ret = 1;
    if (enable)
      enable_mmap(ms);
    else
      disable_mmap(ms);
    POSTACTION(ms);
  }
  return ret;
}
