
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *gitstrdup(const char *s1)
{
 size_t len = strlen(s1) + 1;
 char *s2 = malloc(len);

 if (s2)
  memcpy(s2, s1, len);
 return s2;
}
