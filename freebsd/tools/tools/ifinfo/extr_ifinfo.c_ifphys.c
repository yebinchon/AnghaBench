
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *
ifphys(int type, int phys)
{
 static char buf[256];

 sprintf(buf, "unknown physical %d", phys);
 return buf;
}
