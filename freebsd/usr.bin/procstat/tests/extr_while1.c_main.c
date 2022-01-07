
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int abort () ;
 int pause () ;
 int write (int ,char*,int) ;

int
main(void)
{

 if (write(STDOUT_FILENO, "started\n", 8) != 8)
  abort();
 for (;;)
  pause();
}
