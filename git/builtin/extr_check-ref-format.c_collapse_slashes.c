
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* xmallocz (int ) ;

__attribute__((used)) static char *collapse_slashes(const char *refname)
{
 char *ret = xmallocz(strlen(refname));
 char ch;
 char prev = '/';
 char *cp = ret;

 while ((ch = *refname++) != '\0') {
  if (prev == '/' && ch == prev)
   continue;

  *cp++ = ch;
  prev = ch;
 }
 *cp = '\0';
 return ret;
}
