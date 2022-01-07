
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;
 int xasprintf (char**,char*,int,char*,char*) ;

char *
splice(char *dir, char *path)
{
 char *tail, *buf;
 size_t dirlen;

 dirlen = strlen(dir);
 while (dirlen != 0 && dir[dirlen - 1] == '/')
     dirlen--;
 if ((tail = strrchr(path, '/')) == ((void*)0))
  tail = path;
 else
  tail++;
 xasprintf(&buf, "%.*s/%s", (int)dirlen, dir, tail);
 return (buf);
}
