
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* ccharp ;


 int abort () ;
 char* malloc (size_t) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
colonify(ccharp *cpp)
{
 size_t s;
 char *cp;
 int i;

 if (cpp == ((void*)0))
  return (0);

 for (s = 0, i = 0; cpp[i] != ((void*)0); i++)
  s += strlen(cpp[i]) + 1;
 if ((cp = malloc(s + 1)) == ((void*)0))
  abort();
 for (i = 0, *cp = '\0'; cpp[i] != ((void*)0); i++) {
  strcat(cp, cpp[i]);
  strcat(cp, ":");
 }
 cp[s - 1] = '\0';

 return (cp);
}
