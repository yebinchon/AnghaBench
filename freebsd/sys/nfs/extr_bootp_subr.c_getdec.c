
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
getdec(char **ptr)
{
 char *p;
 int ret;

 p = *ptr;
 ret = 0;
 if ((*p < '0') || (*p > '9'))
  return -1;
 while ((*p >= '0') && (*p <= '9')) {
  ret = ret * 10 + (*p - '0');
  p++;
 }
 *ptr = p;
 return ret;
}
