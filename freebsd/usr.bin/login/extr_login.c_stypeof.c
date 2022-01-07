
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {char const* ty_type; } ;


 struct ttyent* getttynam (char*) ;

const char *
stypeof(char *ttyid)
{
 struct ttyent *t;

 if (ttyid != ((void*)0) && *ttyid != '\0') {
  t = getttynam(ttyid);
  if (t != ((void*)0) && t->ty_type != ((void*)0))
   return (t->ty_type);
 }
 return (((void*)0));
}
