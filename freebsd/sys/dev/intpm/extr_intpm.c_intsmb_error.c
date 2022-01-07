
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PIIX4_SMBHSTSTAT_BUSC ;
 int PIIX4_SMBHSTSTAT_ERR ;
 int PIIX4_SMBHSTSTAT_FAIL ;
 int SMB_EABORT ;
 int SMB_ECOLLI ;
 int SMB_ENOACK ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static int
intsmb_error(device_t dev, int status)
{
 int error = 0;
 if (status & PIIX4_SMBHSTSTAT_ERR)
  error |= SMB_ENOACK;
 if (status & PIIX4_SMBHSTSTAT_BUSC)
  error |= SMB_ECOLLI;
 if (status & PIIX4_SMBHSTSTAT_FAIL)
  error |= SMB_EABORT;

 if (error != 0 && bootverbose)
  device_printf(dev, "error = %d, status = %#x\n", error, status);

 return (error);
}
