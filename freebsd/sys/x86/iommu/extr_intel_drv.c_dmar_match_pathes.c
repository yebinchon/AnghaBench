
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AcpiDmarScopeType { ____Placeholder_AcpiDmarScopeType } AcpiDmarScopeType ;
struct TYPE_4__ {scalar_t__ Device; scalar_t__ Function; } ;
typedef TYPE_1__ ACPI_DMAR_PCI_PATH ;


 int ACPI_DMAR_SCOPE_TYPE_ENDPOINT ;

__attribute__((used)) static int
dmar_match_pathes(int busno1, const ACPI_DMAR_PCI_PATH *path1, int depth1,
    int busno2, const ACPI_DMAR_PCI_PATH *path2, int depth2,
    enum AcpiDmarScopeType scope_type)
{
 int i, depth;

 if (busno1 != busno2)
  return (0);
 if (scope_type == ACPI_DMAR_SCOPE_TYPE_ENDPOINT && depth1 != depth2)
  return (0);
 depth = depth1;
 if (depth2 < depth)
  depth = depth2;
 for (i = 0; i < depth; i++) {
  if (path1[i].Device != path2[i].Device ||
      path1[i].Function != path2[i].Function)
   return (0);
 }
 return (1);
}
