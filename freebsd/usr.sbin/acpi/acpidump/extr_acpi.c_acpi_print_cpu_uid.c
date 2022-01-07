
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_cpu_uid(uint32_t uid, char *uid_string)
{

 printf("\tUID=%d", uid);
 if (uid_string != ((void*)0))
  printf(" (%s)", uid_string);
 printf("\n");
}
