
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
kfib_parse_opts(int *pfib, char *data)
{
 char *pdel, *pend, *s;
 int fibnum;

 if (data == ((void*)0))
  return (0);
 if ((pdel = strchr(data, ' ')) == ((void*)0))
  return (0);
 while (*pdel == ' ')
  pdel++;
 if (strncmp(pdel, "fib=", 4) != 0)
  return (EINVAL);
 if ((s = strchr(pdel, ' ')) != ((void*)0))
  *s++ = '\0';

 pdel += 4;

 fibnum = strtol(pdel, &pend, 10);
 if (*pend != '\0')
  return (EINVAL);

 *pfib = fibnum;

 return (0);
}
