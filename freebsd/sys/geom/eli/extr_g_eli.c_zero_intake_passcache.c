
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zero_boot_passcache () ;
 int zero_geli_intake_keys () ;

__attribute__((used)) static void
zero_intake_passcache(void *dummy)
{
        zero_boot_passcache();
        zero_geli_intake_keys();
}
