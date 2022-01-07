
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int M_WAITOK ;
 int bcopy (char const*,char*,size_t) ;
 char* malloc (size_t,struct malloc_type*,int ) ;
 int strnlen (char const*,size_t) ;

char *
strndup(const char *string, size_t maxlen, struct malloc_type *type)
{
 size_t len;
 char *copy;

 len = strnlen(string, maxlen) + 1;
 copy = malloc(len, type, M_WAITOK);
 bcopy(string, copy, len);
 copy[len - 1] = '\0';
 return (copy);
}
