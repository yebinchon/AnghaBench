
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 void* strdup (char const*) ;

__attribute__((used)) static void *xstrdup(const char *s1)
{
 void *ret = strdup(s1);
 if (!ret)
  die("Out of memory");
 return ret;
}
