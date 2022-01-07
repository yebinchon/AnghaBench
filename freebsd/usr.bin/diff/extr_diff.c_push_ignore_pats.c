
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ignore_pats ;
 int strlcat (char*,char*,size_t) ;
 int strlen (char*) ;
 char* xreallocarray (char*,int,size_t) ;
 char* xstrdup (char*) ;

void
push_ignore_pats(char *pattern)
{
 size_t len;

 if (ignore_pats == ((void*)0))
  ignore_pats = xstrdup(pattern);
 else {

  len = strlen(ignore_pats) + strlen(pattern) + 2;
  ignore_pats = xreallocarray(ignore_pats, 1, len);
  strlcat(ignore_pats, "|", len);
  strlcat(ignore_pats, pattern, len);
 }
}
