
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*) ;

int
ctrlrunit(char *str)
{
    int unit;

    if (sscanf(str, "mlx%d", &unit) == 1)
 return(unit);
    return(-1);
}
