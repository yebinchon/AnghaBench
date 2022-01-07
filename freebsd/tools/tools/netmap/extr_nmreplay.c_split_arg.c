
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ND (char*,int,...) ;
 int NED (char*,int,char*) ;
 char** calloc (int,int) ;
 scalar_t__ strchr (char*,char const) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char **
split_arg(const char *src, int *_ac)
{
    char *my = ((void*)0), **av = ((void*)0), *seps = " \t\r\n,";
    int l, i, ac;

    if (!src)
 return ((void*)0);
    l = strlen(src);




    for (;;) {
 i = ac = 0;
 ND("start pass %d: <%s>", av ? 1 : 0, my);
 while (i < l) {

     while (i <l && strchr(seps, src[i]))
  i++;
     if (i >= l)
  break;
     ND("   pass %d arg %d: <%s>", av ? 1 : 0, ac, src+i);
     if (av)
  av[ac] = my+i;
     ac++;

     while (i <l && !strchr(seps, src[i])) i++;
     if (av)
  my[i] = '\0';
 }
 if (!av) {
     ND("ac is %d", ac);
     av = calloc(1, (l+1) + (ac + 2)*sizeof(char *));
     my = (char *)&(av[ac+2]);
     strcpy(my, src);
 } else {
     break;
 }
    }
    for (i = 0; i < ac; i++) {
 NED("%d: <%s>", i, av[i]);
    }
    av[i++] = ((void*)0);
    av[i++] = my;
    *_ac = ac;
    return av;
}
