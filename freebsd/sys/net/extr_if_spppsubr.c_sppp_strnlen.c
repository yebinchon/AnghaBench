
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;



__attribute__((used)) static int
sppp_strnlen(u_char *p, int max)
{
 int len;

 for (len = 0; len < max && *p; ++p)
  ++len;
 return len;
}
