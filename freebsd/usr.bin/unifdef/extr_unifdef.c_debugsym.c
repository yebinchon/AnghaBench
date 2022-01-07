
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug (char*,char const*,int ,char,char*) ;
 int * symname ;
 char** value ;

__attribute__((used)) static void
debugsym(const char *why, int symind)
{
 debug("%s %s%c%s", why, symname[symind],
     value[symind] ? '=' : ' ',
     value[symind] ? value[symind] : "undef");
}
