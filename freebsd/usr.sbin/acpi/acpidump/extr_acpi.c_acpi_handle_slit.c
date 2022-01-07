
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef size_t UINT64 ;
struct TYPE_2__ {size_t LocalityCount; int* Entry; } ;
typedef TYPE_1__ ACPI_TABLE_SLIT ;
typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_sdt (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_slit(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_SLIT *slit;
 UINT64 i, j;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 slit = (ACPI_TABLE_SLIT *)sdp;
 printf("\tLocality Count=%ju\n", (uintmax_t)slit->LocalityCount);
 printf("\n\t      ");
 for (i = 0; i < slit->LocalityCount; i++)
  printf(" %3ju", (uintmax_t)i);
 printf("\n\t     +");
 for (i = 0; i < slit->LocalityCount; i++)
  printf("----");
 printf("\n");
 for (i = 0; i < slit->LocalityCount; i++) {
  printf("\t %3ju |", (uintmax_t)i);
  for (j = 0; j < slit->LocalityCount; j++)
   printf(" %3d",
       slit->Entry[i * slit->LocalityCount + j]);
  printf("\n");
 }
 printf(END_COMMENT);
}
