
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int SMB_ENOTSUPP ;

__attribute__((used)) static int
intsmb_pcall(device_t dev, u_char slave, char cmd, short sdata, short *rdata)
{

 return (SMB_ENOTSUPP);
}
