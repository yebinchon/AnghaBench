
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_push_nodup (struct argv_array*,int ) ;
 scalar_t__ isspace (char const) ;
 int xstrndup (char const*,int) ;

void argv_array_split(struct argv_array *array, const char *to_split)
{
 while (isspace(*to_split))
  to_split++;
 for (;;) {
  const char *p = to_split;

  if (!*p)
   break;

  while (*p && !isspace(*p))
   p++;
  argv_array_push_nodup(array, xstrndup(to_split, p - to_split));

  while (isspace(*p))
   p++;
  to_split = p;
 }
}
