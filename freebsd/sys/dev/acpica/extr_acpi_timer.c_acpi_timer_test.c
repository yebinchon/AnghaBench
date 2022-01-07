
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int register_t ;


 int INT32_MAX ;
 int N ;
 scalar_t__ VM_GUEST_NO ;
 int acpi_TimerDelta (int ,int ) ;
 int acpi_timer_read () ;
 scalar_t__ bootverbose ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int printf (char*,int,int) ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
acpi_timer_test()
{
    uint32_t last, this;
    int delta, max, max2, min, n;
    register_t s;

    min = INT32_MAX;
    max = max2 = 0;


    s = intr_disable();
    last = acpi_timer_read();
    for (n = 0; n < N; n++) {
 this = acpi_timer_read();
 delta = acpi_TimerDelta(this, last);
 if (delta > max) {
     max2 = max;
     max = delta;
 } else if (delta > max2)
     max2 = delta;
 if (delta < min)
     min = delta;
 last = this;
    }
    intr_restore(s);

    delta = max2 - min;
    if ((max - min > 8 || delta > 3) && vm_guest == VM_GUEST_NO)
 n = 0;
    else if (min < 0 || max == 0 || max2 == 0)
 n = 0;
    else
 n = 1;
    if (bootverbose)
 printf(" %d/%d", n, delta);

    return (n);
}
