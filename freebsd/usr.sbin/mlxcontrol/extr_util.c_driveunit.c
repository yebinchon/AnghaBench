
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*) ;

int
driveunit(char *str)
{
    int unit;

    if (sscanf(str, "mlxd%d", &unit) == 1)
 return(unit);
    return(-1);
}
