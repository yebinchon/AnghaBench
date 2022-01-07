
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;

char *
itoa(unsigned int val)
{
    static char buffer[16];




 sprintf(buffer, "%u", val);
    return (buffer);
}
