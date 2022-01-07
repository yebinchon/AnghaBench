
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DEBUG_DEFAULT ;
 int AcpiDbgLevel ;
 int AcpiGbl_EnableInterpreterSlack ;
 int TRUE ;
 int aml_simulation_regdump (char*) ;
 int aml_simulation_regload (char*) ;
 scalar_t__ load_dsdt (char*) ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 char *progname;

 progname = argv[0];

 if (argc == 1) {
  usage(progname);
 }

 AcpiDbgLevel = ACPI_DEBUG_DEFAULT;





 AcpiGbl_EnableInterpreterSlack = TRUE;

 aml_simulation_regload("region.ini");
 if (load_dsdt(argv[1]) == 0) {
  aml_simulation_regdump("region.dmp");
 }

 return (0);
}
