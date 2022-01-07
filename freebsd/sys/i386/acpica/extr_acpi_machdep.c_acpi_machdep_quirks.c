
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int ACPI_Q_BROKEN ;
 char* pmap_mapbios (int,int) ;
 int pmap_unmapbios (int ,int) ;
 int sscanf (char*,char*,int*) ;

int
acpi_machdep_quirks(int *quirks)
{
 char *va;
 int year;


 va = pmap_mapbios(0xffff0, 16);
 sscanf(va + 11, "%2d", &year);
 pmap_unmapbios((vm_offset_t)va, 16);





 if (year > 90 && year < 99)
  *quirks = ACPI_Q_BROKEN;

 return (0);
}
