
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_get_error () ;
 int err (int,char*,int ) ;

void
bn_checkp(const void *p) {


 if (p == ((void*)0))
  err(1, "allocation failure %lx", ERR_get_error());
}
