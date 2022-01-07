
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int EOF ;
 int add (unsigned char*) ;
 int err (int,char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int getchar () ;
 scalar_t__ isspace (unsigned char) ;
 unsigned char* strchr (char*,char) ;
 int warnx (char*) ;

void
addfile(const char *name)
{
 unsigned char *p;
 FILE *fp;
 int ch;
 char buf[2048 + 1];

 if ((fp = fopen(name, "r")) == ((void*)0))
  err(1, "%s", name);
 while (fgets(buf, sizeof(buf), fp)) {
  if (!(p = strchr(buf, '\n'))) {
   warnx("line too long");
   while ((ch = getchar()) != '\n' && ch != EOF);
   continue;
  }
  *p = '\0';
  for (p = buf; *p && isspace(*p); ++p);
  if (!*p || *p == '#')
   continue;
  add(p);
 }
 (void)fclose(fp);
}
