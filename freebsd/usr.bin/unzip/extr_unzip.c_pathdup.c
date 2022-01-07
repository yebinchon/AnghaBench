
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ L_opt ;
 int errno ;
 int error (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char tolower (unsigned char) ;

__attribute__((used)) static char *
pathdup(const char *path)
{
 char *str;
 size_t i, len;

 len = strlen(path);
 while (len && path[len - 1] == '/')
  len--;
 if ((str = malloc(len + 1)) == ((void*)0)) {
  errno = ENOMEM;
  error("malloc()");
 }
 if (L_opt) {
  for (i = 0; i < len; ++i)
   str[i] = tolower((unsigned char)path[i]);
 } else {
  memcpy(str, path, len);
 }
 str[len] = '\0';

 return (str);
}
