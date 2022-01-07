
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPIIO_REQSLPSTATE ;
 int EX_IOERR ;
 int acpifd ;
 int err (int ,char*,int) ;
 int ioctl (int ,int ,int*) ;

__attribute__((used)) static void
acpi_sleep(int sleep_type)
{
 int ret;


 ret = ioctl(acpifd, ACPIIO_REQSLPSTATE, &sleep_type);
 if (ret != 0)
  err(EX_IOERR, "request sleep type (%d) failed", sleep_type);
}
