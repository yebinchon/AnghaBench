
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t trim_threshold; size_t page_size; size_t granularity; size_t mmap_threshold; } ;


 size_t MAX_SIZE_T ;



 int ensure_initialization () ;
 TYPE_1__ mparams ;

__attribute__((used)) static int change_mparam(int param_number, int value) {
  size_t val = (value == -1)? MAX_SIZE_T : (size_t)value;
  ensure_initialization();
  switch(param_number) {
  case 128:
    mparams.trim_threshold = val;
    return 1;
  case 130:
    if (val >= mparams.page_size && ((val & (val-1)) == 0)) {
      mparams.granularity = val;
      return 1;
    }
    else
      return 0;
  case 129:
    mparams.mmap_threshold = val;
    return 1;
  default:
    return 0;
  }
}
