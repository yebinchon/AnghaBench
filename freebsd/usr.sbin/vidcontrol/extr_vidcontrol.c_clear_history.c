
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONS_CLRHIST ;
 int err (int,char*) ;
 int ioctl (int ,int ) ;
 int revert () ;

__attribute__((used)) static void
clear_history(void)
{
 if (ioctl(0, CONS_CLRHIST) == -1) {
  revert();
  err(1, "clearing history buffer");
 }
}
