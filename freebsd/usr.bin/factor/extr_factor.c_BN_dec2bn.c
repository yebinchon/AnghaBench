
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ errno ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int
BN_dec2bn(BIGNUM **a, const char *str)
{
 char *p;

 errno = 0;
 **a = strtoul(str, &p, 10);
 return (errno == 0 && (*p == '\n' || *p == '\0'));
}
