
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strspn (char const*,char*) ;

int
numerics(char const * str)
{

 return (str[strspn(str, "0123456789x")] == '\0');
}
