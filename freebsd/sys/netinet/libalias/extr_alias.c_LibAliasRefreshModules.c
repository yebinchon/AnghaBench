
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LibAliasLoadModule (char*) ;
 int LibAliasUnLoadAllModule () ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int isspace (char) ;
 int strlen (char*) ;

int
LibAliasRefreshModules(void)
{
 char buf[256], conf[] = "/etc/libalias.conf";
 FILE *fd;
 int i, len;

 fd = fopen(conf, "r");
 if (fd == ((void*)0))
  err(1, "fopen(%s)", conf);

 LibAliasUnLoadAllModule();

 for (;;) {
  fgets(buf, 256, fd);
  if (feof(fd))
          break;
  len = strlen(buf);
  if (len > 1) {
   for (i = 0; i < len; i++)
    if (!isspace(buf[i]))
     break;
   if (buf[i] == '#')
    continue;
   buf[len - 1] = '\0';
   LibAliasLoadModule(buf);
  }
 }
 fclose(fd);
 return (0);
}
