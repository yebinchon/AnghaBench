
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
args(char *buf, char *a[], int num)
{
 char *p = buf, *start;
 char **parg = a;
 int n = 0;

 do {
  while (*p && (*p == ' ' || *p == '\t'))
   p++;
  start = p;
  if (*p)
   *parg = p;
  while (*p && (*p != ' ' && *p != '\t'))
   p++;
  if (p != start)
   parg++, n++;
  if (*p)
   *p++ = '\0';
 } while (*p && n < num);

 return(n);
}
