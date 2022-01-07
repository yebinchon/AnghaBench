
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int M_WAITOK ;
 char* strdup_flags (char const*,struct malloc_type*,int ) ;

char *
strdup(const char *string, struct malloc_type *type)
{

 return (strdup_flags(string, type, M_WAITOK));
}
