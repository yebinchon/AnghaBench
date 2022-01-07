
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_cpu(u_char cpu_id)
{

 printf("\tACPI CPU=");
 if (cpu_id == 0xff)
  printf("ALL\n");
 else
  printf("%d\n", (u_int)cpu_id);
}
