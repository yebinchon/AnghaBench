
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_iter_args {int i; int * res; } ;
typedef int ACPI_DMAR_HARDWARE_UNIT ;


 int dmar_find_iter ;
 int dmar_iterate_tbl (int ,struct find_iter_args*) ;

__attribute__((used)) static ACPI_DMAR_HARDWARE_UNIT *
dmar_find_by_index(int idx)
{
 struct find_iter_args fia;

 fia.i = idx;
 fia.res = ((void*)0);
 dmar_iterate_tbl(dmar_find_iter, &fia);
 return (fia.res);
}
