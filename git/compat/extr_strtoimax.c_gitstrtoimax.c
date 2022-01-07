
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int strtol (char const*,char**,int) ;
 int strtoll (char const*,char**,int) ;

intmax_t gitstrtoimax (const char *nptr, char **endptr, int base)
{



 return strtoll(nptr, endptr, base);

}
