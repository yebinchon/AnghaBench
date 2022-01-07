
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Device; int Function; } ;
typedef TYPE_1__ ACPI_DMAR_PCI_PATH ;


 int printf (char*,...) ;

__attribute__((used)) static void
dmar_print_path(int busno, int depth, const ACPI_DMAR_PCI_PATH *path)
{
 int i;

 printf("[%d, ", busno);
 for (i = 0; i < depth; i++) {
  if (i != 0)
   printf(", ");
  printf("(%d, %d)", path[i].Device, path[i].Function);
 }
 printf("]");
}
