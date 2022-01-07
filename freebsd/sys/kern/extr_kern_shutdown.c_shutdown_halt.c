
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_HALT ;
 int WD_TO_NEVER ;
 int cngetc () ;
 int cpu_halt () ;
 int printf (char*) ;
 int wdog_kern_pat (int ) ;

__attribute__((used)) static void
shutdown_halt(void *junk, int howto)
{

 if (howto & RB_HALT) {
  printf("\n");
  printf("The operating system has halted.\n");
  printf("Please press any key to reboot.\n\n");

  wdog_kern_pat(WD_TO_NEVER);

  switch (cngetc()) {
  case -1:
   cpu_halt();

  default:
   break;
  }
 }
}
