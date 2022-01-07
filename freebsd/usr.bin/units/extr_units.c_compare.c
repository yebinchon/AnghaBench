
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
compare(const void *item1, const void *item2)
{
 return strcmp(*(const char * const *)item1, *(const char * const *)item2);
}
