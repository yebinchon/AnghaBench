
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*,...) ;
 int log_err (int,char*) ;
 int strlen (char const*) ;

char *
concat(const char *s1, char separator, const char *s2)
{
 char *result;
 char s1last, s2first;
 int ret;

 if (s1 == ((void*)0))
  s1 = "";
 if (s2 == ((void*)0))
  s2 = "";

 if (s1[0] == '\0')
  s1last = '\0';
 else
  s1last = s1[strlen(s1) - 1];

 s2first = s2[0];

 if (s1last == separator && s2first == separator) {





  ret = asprintf(&result, "%s%s", s1, s2 + 1);
 } else if (s1last == separator || s2first == separator ||
     s1[0] == '\0' || s2[0] == '\0') {
  ret = asprintf(&result, "%s%s", s1, s2);
 } else {
  ret = asprintf(&result, "%s%c%s", s1, separator, s2);
 }
 if (ret < 0)
  log_err(1, "asprintf");



 return (result);
}
