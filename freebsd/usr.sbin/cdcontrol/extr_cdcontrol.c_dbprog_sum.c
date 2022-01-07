
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
dbprog_sum(int n)
{
 char buf[12],
  *p;
 int ret = 0;


 sprintf(buf, "%u", n);
 for (p = buf; *p != '\0'; p++)
  ret += (*p - '0');

 return(ret);
}
