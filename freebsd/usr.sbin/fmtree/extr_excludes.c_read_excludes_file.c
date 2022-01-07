
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {char* glob; int pathname; } ;
typedef int FILE ;


 int LIST_INSERT_HEAD (int *,struct exclude*,int ) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int excludes ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char const*,char*) ;
 int link ;
 void* malloc (int) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ strchr (char*,char) ;

void
read_excludes_file(const char *name)
{
 FILE *fp;
 char *line, *str;
 struct exclude *e;
 size_t len;

 fp = fopen(name, "r");
 if (fp == ((void*)0))
  err(1, "%s", name);

 while ((line = fgetln(fp, &len)) != ((void*)0)) {
  if (line[len - 1] == '\n')
   len--;
  if (len == 0)
   continue;

  str = malloc(len + 1);
  e = malloc(sizeof *e);
  if (str == ((void*)0) || e == ((void*)0))
   errx(1, "memory allocation error");
  e->glob = str;
  memcpy(str, line, len);
  str[len] = '\0';
  if (strchr(str, '/'))
   e->pathname = 1;
  else
   e->pathname = 0;
  LIST_INSERT_HEAD(&excludes, e, link);
 }
 fclose(fp);
}
