
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXPATHLEN ;
 int bcopy (char*,char*,size_t) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
pfr_fix_anchor(char *anchor)
{
 size_t siz = MAXPATHLEN;
 int i;

 if (anchor[0] == '/') {
  char *path;
  int off;

  path = anchor;
  off = 1;
  while (*++path == '/')
   off++;
  bcopy(path, anchor, siz - off);
  memset(anchor + siz - off, 0, off);
 }
 if (anchor[siz - 1])
  return (-1);
 for (i = strlen(anchor); i < siz; i++)
  if (anchor[i])
   return (-1);
 return (0);
}
