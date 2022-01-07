
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rflag ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmp_comm(const char *s1, const char *s2)
{
 int rv;

 rv = strcmp(s1, s2);
 if (rv == 0)
  rv = -1;
 return (rflag ? rv : -rv);
}
