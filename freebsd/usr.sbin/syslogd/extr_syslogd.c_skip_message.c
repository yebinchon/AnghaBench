
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcasestr (char const*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
skip_message(const char *name, const char *spec, int checkcase)
{
 const char *s;
 char prev, next;
 int exclude = 0;


 if (spec == ((void*)0))
  return 0;
 switch (*spec) {
 case '-':
  exclude = 1;

 case '+':
  spec++;
  break;
 default:
  break;
 }
 if (checkcase)
  s = strstr (spec, name);
 else
  s = strcasestr (spec, name);

 if (s != ((void*)0)) {
  prev = (s == spec ? ',' : *(s - 1));
  next = *(s + strlen (name));

  if (prev == ',' && (next == '\0' || next == ','))


   return exclude;
 }



 return !exclude;
}
