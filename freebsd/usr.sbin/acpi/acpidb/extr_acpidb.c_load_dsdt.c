
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Length; } ;
typedef TYPE_1__ u_int8_t ;
struct stat {int st_size; } ;
typedef int off_t ;
typedef int mode_t ;
typedef int filetmp ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_NEW_TABLE_DESC ;
typedef int ACPI_ADR_SPACE_HANDLER ;


 int ACPI_ADR_SPACE_CMOS ;
 int ACPI_ADR_SPACE_EC ;
 int ACPI_ADR_SPACE_PCI_BAR_TARGET ;
 int ACPI_ADR_SPACE_PCI_CONFIG ;
 int ACPI_ADR_SPACE_SMBUS ;
 int ACPI_ADR_SPACE_SYSTEM_IO ;
 int ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_ROOT_OBJECT ;
 int AE_OK ;
 int AcGetAllTablesFromFile (char*,int ,int **) ;
 int AcpiDbUserCommands () ;
 scalar_t__ AcpiGbl_DebuggerConfiguration ;
 int AcpiInitializeDebugger () ;
 int AcpiInitializeSubsystem () ;
 int AcpiInstallAddressSpaceHandler (int ,int ,int ,int *,int *) ;
 int MAP_PRIVATE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PATH_MAX ;
 int PROT_READ ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TRUE ;
 scalar_t__ aml_vm_space_handler_cmos ;
 scalar_t__ aml_vm_space_handler_ec ;
 scalar_t__ aml_vm_space_handler_pci_bar_target ;
 scalar_t__ aml_vm_space_handler_pci_config ;
 scalar_t__ aml_vm_space_handler_smbus ;
 scalar_t__ aml_vm_space_handler_system_io ;
 scalar_t__ aml_vm_space_handler_system_memory ;
 int close (int) ;
 TYPE_1__ dummy_dsdt_table ;
 int fprintf (int ,char*,...) ;
 int fstat (int,struct stat*) ;
 TYPE_1__* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (TYPE_1__*,size_t) ;
 int open (char const*,int,int) ;
 int perror (char*) ;
 scalar_t__ snprintf (char*,int,char*,char const*) ;
 int stderr ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unlink (char*) ;
 int write (int,TYPE_1__*,int) ;

__attribute__((used)) static int
load_dsdt(const char *dsdtfile)
{
 char filetmp[PATH_MAX];
 ACPI_NEW_TABLE_DESC *list;
 u_int8_t *code;
 struct stat sb;
 int dounlink, error, fd;

 fd = open(dsdtfile, O_RDONLY, 0);
 if (fd == -1) {
  perror("open");
  return (-1);
 }
 if (fstat(fd, &sb) == -1) {
  perror("fstat");
  close(fd);
  return (-1);
 }
 code = mmap(((void*)0), (size_t)sb.st_size, PROT_READ, MAP_PRIVATE, fd, (off_t)0);
 close(fd);
 if (code == ((void*)0)) {
  perror("mmap");
  return (-1);
 }
 if ((error = AcpiInitializeSubsystem()) != AE_OK) {
  munmap(code, (size_t)sb.st_size);
  return (-1);
 }




 if (strncmp((char *)code, "DSDT", 4) == 0) {
  dounlink = 0;
  strlcpy(filetmp, dsdtfile, sizeof(filetmp));
 } else {
  dounlink = 1;
  mode_t mode = (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
  dummy_dsdt_table.Length = sizeof(ACPI_TABLE_HEADER) + sb.st_size;
  if ((size_t)snprintf(filetmp, sizeof(filetmp), "%s.tmp",
      dsdtfile) > sizeof(filetmp) - 1) {
   fprintf(stderr, "file name too long\n");
   munmap(code, (size_t)sb.st_size);
   return (-1);
  }
  fd = open(filetmp, O_WRONLY | O_CREAT | O_TRUNC, mode);
  if (fd == -1) {
   perror("open");
   munmap(code, (size_t)sb.st_size);
   return (-1);
  }
  write(fd, &dummy_dsdt_table, sizeof(ACPI_TABLE_HEADER));

  write(fd, code, sb.st_size);
  close(fd);
 }
 munmap(code, (size_t)sb.st_size);




 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_SYSTEM_MEMORY,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_system_memory,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise SystemMemory handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_SYSTEM_IO,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_system_io,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise SystemIO handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_PCI_CONFIG,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_pci_config,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise PciConfig handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_EC,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_ec,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise EC handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_SMBUS,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_smbus,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise SMBUS handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_CMOS,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_cmos,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise CMOS handler: %d\n", error);
  return (-1);
 }
 if ((error = AcpiInstallAddressSpaceHandler(ACPI_ROOT_OBJECT,
   ACPI_ADR_SPACE_PCI_BAR_TARGET,
   (ACPI_ADR_SPACE_HANDLER)aml_vm_space_handler_pci_bar_target,
   ((void*)0), ((void*)0))) != AE_OK) {
  fprintf(stderr, "could not initialise PCI BAR TARGET handler: %d\n", error);
  return (-1);
 }

 list = ((void*)0);
 AcGetAllTablesFromFile(filetmp, TRUE, &list);

 AcpiInitializeDebugger();
 AcpiGbl_DebuggerConfiguration = 0;
 AcpiDbUserCommands();

 if (dounlink) {
  unlink(filetmp);
 }

 return (0);
}
