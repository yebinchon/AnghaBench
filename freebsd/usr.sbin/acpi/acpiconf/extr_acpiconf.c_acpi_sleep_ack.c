
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPIIO_ACKSLPSTATE ;
 int EX_IOERR ;
 int acpifd ;
 int err (int ,char*) ;
 int ioctl (int ,int ,int*) ;

__attribute__((used)) static void
acpi_sleep_ack(int err_val)
{
 int ret;

 ret = ioctl(acpifd, ACPIIO_ACKSLPSTATE, &err_val);
 if (ret != 0)
  err(EX_IOERR, "ack sleep type failed");
}
