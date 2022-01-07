
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,int) ;

__attribute__((used)) static void
bailout(int ret) {
 if (ret == 0)
  return;
 errx(1, "Operation returned error %d", ret);
}
