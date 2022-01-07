
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int err (int ,int *) ;
 char* fgetln (int *,size_t*) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static char *
get_line(FILE *b, size_t *n)
{
 char *cp;
 size_t len;
 static char *buf;
 static size_t bufsize;

 if ((cp = fgetln(b, &len)) == ((void*)0))
  return (((void*)0));

 if (cp[len - 1] != '\n')
  len++;
 if (len + 1 > bufsize) {
  do {
   bufsize += 1024;
  } while (len + 1 > bufsize);
  if ((buf = realloc(buf, bufsize)) == ((void*)0))
   err(EXIT_FAILURE, ((void*)0));
 }
 memcpy(buf, cp, len - 1);
 buf[len - 1] = '\n';
 buf[len] = '\0';
 if (n != ((void*)0))
  *n = len;
 return (buf);
}
