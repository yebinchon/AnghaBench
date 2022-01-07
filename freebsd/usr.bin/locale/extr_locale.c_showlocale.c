
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int id; } ;


 int LC_ALL ;
 size_t NLCINFO ;
 char* getenv (char*) ;
 TYPE_1__* lcinfo ;
 int printf (char*,char const*,...) ;
 char* setlocale (int ,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

void
showlocale(void)
{
 size_t i;
 const char *lang, *vval, *eval;

 setlocale(LC_ALL, "");

 lang = getenv("LANG");
 if (lang == ((void*)0)) {
  lang = "";
 }
 printf("LANG=%s\n", lang);


 for (i = 0; i < NLCINFO; i++) {
  vval = setlocale(lcinfo[i].id, ((void*)0));
  eval = getenv(lcinfo[i].name);
  if (eval != ((void*)0) && !strcmp(eval, vval)
    && strcmp(lang, vval)) {
   printf("%s=%s\n", lcinfo[i].name, vval);
  } else {
   printf("%s=\"%s\"\n", lcinfo[i].name, vval);
  }
 }

 vval = getenv("LC_ALL");
 if (vval == ((void*)0)) {
  vval = "";
 }
 printf("LC_ALL=%s\n", vval);
}
