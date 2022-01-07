
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addchar (char) ;
 char* buffer ;
 scalar_t__ current ;

__attribute__((used)) static char *
getstring(void)
{
 addchar('\0');
 current = 0;
 return buffer;
}
