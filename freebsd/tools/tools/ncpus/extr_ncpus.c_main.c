
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_detect () ;
 int biosmptable_detect () ;
 int printf (char*,int) ;

int
main(void)
{
 printf("acpi: %d\n", acpi_detect());

 printf("mptable: %d\n", biosmptable_detect());

 return 0;
}
