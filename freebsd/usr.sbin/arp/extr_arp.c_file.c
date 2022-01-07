
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isblank (char) ;
 scalar_t__ set (int,char**) ;
 int sscanf (char*,char*,char*,char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 int xo_err (int,char*,char*) ;
 int xo_warnx (char*,char*) ;

__attribute__((used)) static int
file(char *name)
{
 FILE *fp;
 int i, retval;
 char line[100], arg[5][50], *args[5], *p;

 if ((fp = fopen(name, "r")) == ((void*)0))
  xo_err(1, "cannot open %s", name);
 args[0] = &arg[0][0];
 args[1] = &arg[1][0];
 args[2] = &arg[2][0];
 args[3] = &arg[3][0];
 args[4] = &arg[4][0];
 retval = 0;
 while(fgets(line, sizeof(line), fp) != ((void*)0)) {
  if ((p = strchr(line, '#')) != ((void*)0))
   *p = '\0';
  for (p = line; isblank(*p); p++);
  if (*p == '\n' || *p == '\0')
   continue;
  i = sscanf(p, "%49s %49s %49s %49s %49s", arg[0], arg[1],
      arg[2], arg[3], arg[4]);
  if (i < 2) {
   xo_warnx("bad line: %s", line);
   retval = 1;
   continue;
  }
  if (set(i, args))
   retval = 1;
 }
 fclose(fp);
 return (retval);
}
