
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

char *
drivename(int unit)
{
    static char buf[32];

    sprintf(buf, "mlxd%d", unit);
    return(buf);
}
