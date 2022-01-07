
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int dummy; } ;


 int acpi_timer_read () ;

__attribute__((used)) static u_int
acpi_timer_get_timecount(struct timecounter *tc)
{
    return (acpi_timer_read());
}
