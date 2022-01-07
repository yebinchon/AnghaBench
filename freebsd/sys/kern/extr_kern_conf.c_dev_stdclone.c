
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bcmp (char const*,char*,int) ;
 scalar_t__ isdigit (char) ;
 int strlen (char const*) ;

int
dev_stdclone(char *name, char **namep, const char *stem, int *unit)
{
 int u, i;

 i = strlen(stem);
 if (bcmp(stem, name, i) != 0)
  return (0);
 if (!isdigit(name[i]))
  return (0);
 u = 0;
 if (name[i] == '0' && isdigit(name[i+1]))
  return (0);
 while (isdigit(name[i])) {
  u *= 10;
  u += name[i++] - '0';
 }
 if (u > 0xffffff)
  return (0);
 *unit = u;
 if (namep)
  *namep = &name[i];
 if (name[i])
  return (2);
 return (1);
}
