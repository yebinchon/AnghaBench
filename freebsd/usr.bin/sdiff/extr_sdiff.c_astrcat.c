
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* realloc (char*,size_t) ;
 char* strdup (char const*) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
astrcat(char **s, const char *append)
{

 static size_t offset = 0;
 size_t newsiz;




 static const char *oldstr = ((void*)0);
 char *newstr;




 if (!*s) {
  if (!(*s = strdup(append)))
   err(2, "astrcat");


  offset = strlen(*s);
  oldstr = *s;

  return;
 }
 if (oldstr != *s) {
  offset = strlen(*s);
  oldstr = *s;
 }


 newsiz = offset + 1 + strlen(append) + 1;


 newstr = realloc(*s, newsiz);
 if (newstr == ((void*)0))
  err(2, "astrcat");
 *s = newstr;



 strlcpy(*s + offset, "\n", newsiz - offset);
 strlcat(*s + offset, append, newsiz - offset);



 offset = newsiz - 1;
 oldstr = *s;
}
