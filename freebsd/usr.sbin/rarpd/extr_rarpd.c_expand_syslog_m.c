
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int asprintf (char**,char*,char*,...) ;
 int errno ;
 int free (char*) ;
 char* strdup (char*) ;
 int strerror (int ) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
expand_syslog_m(const char *fmt, char **newfmt) {
 const char *str, *m;
 char *p, *np;

 p = strdup("");
 str = fmt;
 while ((m = strstr(str, "%m")) != ((void*)0)) {
  asprintf(&np, "%s%.*s%s", p, (int)(m - str),
      str, strerror(errno));
  free(p);
  if (np == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
  p = np;
  str = m + 2;
 }

 if (*str != '\0') {
  asprintf(&np, "%s%s", p, str);
  free(p);
  if (np == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
  p = np;
 }

 *newfmt = p;
 return (0);
}
