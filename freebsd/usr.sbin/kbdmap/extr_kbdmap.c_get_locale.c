
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_LANG ;
 char* getenv (char*) ;
 char* lang_default ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static const char *
get_locale(void)
{
 const char *locale;

 if ((locale = getenv("LC_ALL")) == ((void*)0) &&
     (locale = getenv("LC_CTYPE")) == ((void*)0) &&
     (locale = getenv("LANG")) == ((void*)0))
  locale = lang_default;


 if (!strcmp(locale, "C"))
  locale = DEFAULT_LANG;

 return locale;
}
