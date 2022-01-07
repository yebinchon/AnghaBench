
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,int) ;

__attribute__((used)) static const char *get_next_line(const char *start, const char *end)
{
 const char *nl = memchr(start, '\n', end - start);

 return nl ? nl + 1 : end;
}
