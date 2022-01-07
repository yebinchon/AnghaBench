
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPIDEV ;
 int EX_OSFILE ;
 int O_RDONLY ;
 int O_RDWR ;
 int acpifd ;
 int err (int ,int ) ;
 int open (int ,int ) ;

__attribute__((used)) static void
acpi_init(void)
{
 acpifd = open(ACPIDEV, O_RDWR);
 if (acpifd == -1)
  acpifd = open(ACPIDEV, O_RDONLY);
 if (acpifd == -1)
  err(EX_OSFILE, ACPIDEV);
}
