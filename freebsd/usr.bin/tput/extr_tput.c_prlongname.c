
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void
prlongname(char *buf)
{
 int savech;
 char *p, *savep;

 for (p = buf; *p && *p != ':'; ++p);
 savech = *(savep = p);
 for (*p = '\0'; p >= buf && *p != '|'; --p);
 (void)printf("%s\n", p + 1);
 *savep = savech;
}
