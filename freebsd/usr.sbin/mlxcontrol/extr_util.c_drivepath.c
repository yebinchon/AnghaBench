
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_DEV ;
 int drivename (int) ;
 int sprintf (char*,char*,char*,int ) ;

char *
drivepath(int unit)
{
    static char buf[32];

    sprintf(buf, "%s%s", _PATH_DEV, drivename(unit));
    return(buf);
}
