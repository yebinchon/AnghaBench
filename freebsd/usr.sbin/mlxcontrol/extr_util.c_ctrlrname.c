
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

char *
ctrlrname(int unit)
{
    static char buf[32];

    sprintf(buf, "mlx%d", unit);
    return(buf);
}
