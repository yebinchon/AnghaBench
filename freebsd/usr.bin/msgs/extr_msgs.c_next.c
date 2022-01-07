
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int
next(char *buf)
{
 int i;
 sscanf(buf, "%d", &i);
 sprintf(buf, "Goto %d", i);
 return(--i);
}
