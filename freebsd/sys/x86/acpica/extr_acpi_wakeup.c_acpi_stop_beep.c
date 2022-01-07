
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ acpi_resume_beep ;
 int timer_spkr_release () ;

__attribute__((used)) static void
acpi_stop_beep(void *arg)
{

 if (acpi_resume_beep != 0)
  timer_spkr_release();
}
