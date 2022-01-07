
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
portcompare(char * a, char * b)
{
 size_t i;


 for (i = 0; ; i++) {
  if (a[i] != b[i])
   break;
  if (a[i] == 0)
   return 0;
 }


 if (a[i] == 0)
  return -1;
 if (b[i] == 0)
  return 1;


 if (a[i] == '/')
  return -1;
 if (b[i] == '/')
  return 1;


 if (a[i] < b[i])
  return -1;
 else
  return 1;
}
