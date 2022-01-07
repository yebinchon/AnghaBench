
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ACPIRegionContent {int regtype; int value; int addr; } ;
typedef int UINT8 ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int RegionContentList ;
 int TAILQ_INSERT_TAIL (int *,struct ACPIRegionContent*,int ) ;
 int links ;
 struct ACPIRegionContent* malloc (int) ;

__attribute__((used)) static int
aml_simulate_regcontent_add(int regtype, ACPI_PHYSICAL_ADDRESS addr, UINT8 value)
{
 struct ACPIRegionContent *rc;

 rc = malloc(sizeof(struct ACPIRegionContent));
 if (rc == ((void*)0)) {
  return (-1);
 }
 rc->regtype = regtype;
 rc->addr = addr;
 rc->value = value;

 TAILQ_INSERT_TAIL(&RegionContentList, rc, links);
 return (0);
}
