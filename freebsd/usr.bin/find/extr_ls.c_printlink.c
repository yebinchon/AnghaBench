
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int MAXPATHLEN ;
 int printf (char*,char*) ;
 int readlink (char*,char*,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
printlink(char *name)
{
 ssize_t lnklen;
 char path[MAXPATHLEN];

 if ((lnklen = readlink(name, path, MAXPATHLEN - 1)) == -1) {
  warn("%s", name);
  return;
 }
 path[lnklen] = '\0';
 (void)printf(" -> %s", path);
}
