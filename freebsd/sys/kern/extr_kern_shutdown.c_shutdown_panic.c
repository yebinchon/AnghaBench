
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 int RB_DUMP ;
 int cncheckc () ;
 int cngetc () ;
 int panic_reboot_wait_time ;
 int printf (char*,...) ;

__attribute__((used)) static void
shutdown_panic(void *junk, int howto)
{
 int loop;

 if (howto & RB_DUMP) {
  if (panic_reboot_wait_time != 0) {
   if (panic_reboot_wait_time != -1) {
    printf("Automatic reboot in %d seconds - "
           "press a key on the console to abort\n",
     panic_reboot_wait_time);
    for (loop = panic_reboot_wait_time * 10;
         loop > 0; --loop) {
     DELAY(1000 * 100);

     if (cncheckc() != -1)
      break;
    }
    if (!loop)
     return;
   }
  } else {
   return;
  }
  printf("--> Press a key on the console to reboot,\n");
  printf("--> or switch off the system now.\n");
  cngetc();
 }
}
