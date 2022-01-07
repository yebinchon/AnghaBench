
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int
ofw_bus_node_is_compatible_int(const char *compat, int len,
    const char *onecompat)
{
 int onelen, l, ret;

 onelen = strlen(onecompat);

 ret = 0;
 while (len > 0) {
  if (strlen(compat) == onelen &&
      strncasecmp(compat, onecompat, onelen) == 0) {

   ret = 1;
   break;
  }


  l = strlen(compat) + 1;
  compat += l;
  len -= l;
 }

 return (ret);
}
