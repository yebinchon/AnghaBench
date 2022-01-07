
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
member(const char *elem, const char *list)
{
 char *p;
 int len;

 p = strstr(list, elem);
 len = strlen(elem);

 return (p != ((void*)0) &&
     (p == list || p[-1] == ',') &&
     (p[len] == '\0' || p[len] == ','));
}
