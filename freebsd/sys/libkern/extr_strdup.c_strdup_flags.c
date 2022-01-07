
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int bcopy (char const*,char*,size_t) ;
 char* malloc (size_t,struct malloc_type*,int) ;
 int strlen (char const*) ;

char *
strdup_flags(const char *string, struct malloc_type *type, int flags)
{
 size_t len;
 char *copy;

 len = strlen(string) + 1;
 copy = malloc(len, type, flags);
 if (copy == ((void*)0))
  return (((void*)0));
 bcopy(string, copy, len);
 return (copy);
}
