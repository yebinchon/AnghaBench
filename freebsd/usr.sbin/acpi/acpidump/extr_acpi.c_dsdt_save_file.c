
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int ACPI_TABLE_HEADER ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int assert (int ) ;
 int close (int) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int write_dsdt (int,int *,int *) ;

void
dsdt_save_file(char *outfile, ACPI_TABLE_HEADER *rsdt, ACPI_TABLE_HEADER *dsdp)
{
 int fd;
 mode_t mode;

 assert(outfile != ((void*)0));
 mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
 fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, mode);
 if (fd == -1) {
  perror("dsdt_save_file");
  return;
 }
 write_dsdt(fd, rsdt, dsdp);
 close(fd);
}
