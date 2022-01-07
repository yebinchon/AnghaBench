
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mmc_get_rca (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
mmc_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{

 snprintf(buf, buflen, "rca=0x%04x", mmc_get_rca(child));
 return (0);
}
