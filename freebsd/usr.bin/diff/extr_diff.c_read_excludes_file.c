
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,...) ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int push_excludes (char*) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 char* strndup (char*,size_t) ;

void
read_excludes_file(char *file)
{
 FILE *fp;
 char *buf, *pattern;
 size_t len;

 if (strcmp(file, "-") == 0)
  fp = stdin;
 else if ((fp = fopen(file, "r")) == ((void*)0))
  err(2, "%s", file);
 while ((buf = fgetln(fp, &len)) != ((void*)0)) {
  if (buf[len - 1] == '\n')
   len--;
  if ((pattern = strndup(buf, len)) == ((void*)0))
   err(2, "xstrndup");
  push_excludes(pattern);
 }
 if (strcmp(file, "-") != 0)
  fclose(fp);
}
