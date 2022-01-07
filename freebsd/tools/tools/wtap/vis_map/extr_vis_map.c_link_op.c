
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int dummy; } ;


 int VISIOCTLLINK ;
 int dev ;
 scalar_t__ ioctl (int ,int ,struct link*) ;
 int printf (char*) ;

__attribute__((used)) static void
link_op(struct link *l)
{
 if (ioctl(dev, VISIOCTLLINK, l) < 0) {
  printf("error making a link operation\n");
 }
}
