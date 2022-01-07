
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int acpi_timer_dev ;
 scalar_t__ acpi_timer_read () ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
acpi_timer_boot_test(void)
{
    uint32_t u1, u2, u3;

    u1 = acpi_timer_read();
    u2 = acpi_timer_read();
    u3 = acpi_timer_read();

    device_printf(acpi_timer_dev, "timer test in progress, reboot to quit.\n");
    for (;;) {




 if (u3 > u1) {
     if (u2 < u1 || u2 > u3)
  device_printf(acpi_timer_dev,
         "timer is not monotonic: 0x%08x,0x%08x,0x%08x\n",
         u1, u2, u3);
 }
 u1 = u2;
 u2 = u3;
 u3 = acpi_timer_read();
    }
}
