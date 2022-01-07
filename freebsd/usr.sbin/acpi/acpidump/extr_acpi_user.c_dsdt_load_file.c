
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct stat {int st_size; } ;
struct TYPE_4__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int ACPI_SIG_DSDT ;
 int LIST_INIT (int *) ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ acpi_checksum (TYPE_1__*,int ) ;
 int acpi_mem_fd ;
 int errx (int,char*,char*) ;
 int fstat (int,struct stat*) ;
 int maplist ;
 int * mmap (int ,int ,int ,int ,int,int ) ;
 int open (char*,int ) ;
 scalar_t__ strncmp (int *,int ,int) ;

ACPI_TABLE_HEADER *
dsdt_load_file(char *infile)
{
 ACPI_TABLE_HEADER *sdt;
 uint8_t *dp;
 struct stat sb;

 if ((acpi_mem_fd = open(infile, O_RDONLY)) == -1)
  errx(1, "opening %s", infile);

 LIST_INIT(&maplist);

 if (fstat(acpi_mem_fd, &sb) == -1)
  errx(1, "fstat %s", infile);

 dp = mmap(0, sb.st_size, PROT_READ, MAP_PRIVATE, acpi_mem_fd, 0);
 if (dp == ((void*)0))
  errx(1, "mmap %s", infile);

 sdt = (ACPI_TABLE_HEADER *)dp;
 if (strncmp(dp, ACPI_SIG_DSDT, 4) != 0 ||
     acpi_checksum(sdt, sdt->Length) != 0)
  return (((void*)0));

 return (sdt);
}
