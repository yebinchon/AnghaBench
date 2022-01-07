
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change_mparam (int,int) ;

int mspace_mallopt(int param_number, int value) {
  return change_mparam(param_number, value);
}
