
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static int
number(char **lc)
{
 int nn;

 nn = 0;
 while (isdigit((unsigned char)(**lc)))
  nn = nn*10 + *(*lc)++ - '0';
 return (nn);
}
