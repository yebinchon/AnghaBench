
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int strtoul (char const*,char**,int) ;
 int strtoull (char const*,char**,int) ;

uintmax_t gitstrtoumax (const char *nptr, char **endptr, int base)
{



 return strtoull(nptr, endptr, base);

}
