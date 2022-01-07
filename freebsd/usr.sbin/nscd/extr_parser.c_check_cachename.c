
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
check_cachename(const char *str)
{

 assert(str != ((void*)0));
 return ((strlen(str) > 0) ? 0 : -1);
}
