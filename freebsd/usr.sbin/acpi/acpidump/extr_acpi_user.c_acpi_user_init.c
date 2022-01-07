
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int O_RDONLY ;
 int acpi_mem_fd ;
 int err (int,char*) ;
 int maplist ;
 int open (char*,int ) ;

__attribute__((used)) static void
acpi_user_init(void)
{

 if (acpi_mem_fd == -1) {
  acpi_mem_fd = open("/dev/mem", O_RDONLY);
  if (acpi_mem_fd == -1)
   err(1, "opening /dev/mem");
  LIST_INIT(&maplist);
 }
}
