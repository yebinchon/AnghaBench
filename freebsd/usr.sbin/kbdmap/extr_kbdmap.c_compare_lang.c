
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
compare_lang(const void *a, const void *b)
{
 const char *l1 = *((const char * const *) a);
 const char *l2 = *((const char * const *) b);

 return strcmp(l1, l2);
}
