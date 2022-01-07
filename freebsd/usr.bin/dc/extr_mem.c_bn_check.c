
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_get_error () ;
 int err (int,char*,int ) ;

void
bn_check(int x) {


 if (x == 0)
  err(1, "big number failure %lx", ERR_get_error());
}
