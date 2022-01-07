
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

char *
itoa7(int val)
{
    static char buffer[16];




 sprintf(buffer, "%6u", val);
    return (buffer);
}
