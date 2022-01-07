
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 scalar_t__ malloc (int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
allocopy(char *p)
{
 int len = strlen(p) + 1;
 char *q = (char *)malloc(len);

 if (!q) {
  fatal("malloc");

 }

 strlcpy(q, p, len);
 return q;
}
