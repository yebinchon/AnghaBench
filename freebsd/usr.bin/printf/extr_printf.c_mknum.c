
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int memmove (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;
 int strerror (int ) ;
 int strlen (char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static char *
mknum(char *str, char ch)
{
 static char *copy;
 static size_t copy_size;
 char *newcopy;
 size_t len, newlen;

 len = strlen(str) + 2;
 if (len > copy_size) {
  newlen = ((len + 1023) >> 10) << 10;
  if ((newcopy = realloc(copy, newlen)) == ((void*)0)) {
   warnx("%s", strerror(ENOMEM));
   return (((void*)0));
  }
  copy = newcopy;
  copy_size = newlen;
 }

 memmove(copy, str, len - 3);
 copy[len - 3] = 'j';
 copy[len - 2] = ch;
 copy[len - 1] = '\0';
 return (copy);
}
