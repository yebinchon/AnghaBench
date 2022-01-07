
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;
struct mfi_progress {int progress; int elapsed_seconds; } ;


 int print_time_humanized (int) ;
 int printf (char*,...) ;

void
mfi_display_progress(const char *label, struct mfi_progress *prog)
{
 uint seconds;

 printf("%s: %.2f%% complete after ", label,
     (float)prog->progress * 100 / 0xffff);
 print_time_humanized(prog->elapsed_seconds);
 if (prog->progress != 0 && prog->elapsed_seconds > 10) {
  printf(" finished in ");
  seconds = (0x10000 * (uint32_t)prog->elapsed_seconds) /
      prog->progress - prog->elapsed_seconds;
  print_time_humanized(seconds);
 }
 printf("\n");
}
