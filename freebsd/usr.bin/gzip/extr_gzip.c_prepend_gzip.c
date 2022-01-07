
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int maybe_err (char*) ;
 char* strdup (char*) ;

__attribute__((used)) static void
prepend_gzip(char *gzip, int *argc, char ***argv)
{
 char *s, **nargv, **ac;
 int nenvarg = 0, i;


 for (s = gzip;;) {
  while (*s == ' ' || *s == '\t')
   s++;
  if (*s == 0)
   goto count_done;
  nenvarg++;
  while (*s != ' ' && *s != '\t')
   if (*s++ == 0)
    goto count_done;
 }
count_done:

 if (nenvarg == 0)
  return;

 *argc += nenvarg;
 ac = *argv;

 nargv = (char **)malloc((*argc + 1) * sizeof(char *));
 if (nargv == ((void*)0))
  maybe_err("malloc");


 *argv = nargv;


 i = 0;
 nargv[i++] = *(ac++);


 s = strdup(gzip);
 if (s == ((void*)0))
  maybe_err("strdup");
 for (;;) {

  while (*s == ' ' || *s == '\t')
   s++;
  if (*s == 0)
   goto copy_done;
  nargv[i++] = s;

  while (*s != ' ' && *s != '\t')
   if (*s++ == 0)

    goto copy_done;

  *s++ = 0;
 }
copy_done:


 while (*ac)
  nargv[i++] = *(ac++);
 nargv[i] = ((void*)0);
}
