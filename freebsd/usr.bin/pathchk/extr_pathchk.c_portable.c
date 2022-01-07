
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strspn (char const*,char const*) ;

__attribute__((used)) static int
portable(const char *path)
{
 static const char charset[] =
     "abcdefghijklmnopqrstuvwxyz"
     "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     "0123456789._-";
 long s;

 s = strspn(path, charset);
 if (path[s] != '\0')
  return (0);

 return (1);
}
