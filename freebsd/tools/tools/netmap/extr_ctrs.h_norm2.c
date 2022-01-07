
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int units ;
typedef int u_int ;


 int sprintf (char*,char*,double,char*) ;

__attribute__((used)) static const char *
norm2(char *buf, double val, char *fmt, int normalize)
{
 char *units[] = { "", "K", "M", "G", "T" };
 u_int i;
 if (normalize)
  for (i = 0; val >=1000 && i < sizeof(units)/sizeof(char *) - 1; i++)
   val /= 1000;
 else
  i=0;
 sprintf(buf, fmt, val, units[i]);
 return buf;
}
