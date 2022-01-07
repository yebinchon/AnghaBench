
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

__attribute__((used)) static inline const char *
init_color(const char *d)
{
 char *c;

 c = getenv("GREP_COLOR");
 return (c != ((void*)0) && c[0] != '\0' ? c : d);
}
