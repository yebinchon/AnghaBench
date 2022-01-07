
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** args ;
 int cargs ;
 int err (int,char*) ;
 int nargs ;
 int ** realloc (int **,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static void
addarg(const char *item)
{
 if (nargs + 1 >= cargs) {
  cargs += 16;
  if ((args = realloc(args, sizeof(*args) * cargs)) == ((void*)0))
   err(1, "malloc");
 }
 if ((args[nargs++] = strdup(item)) == ((void*)0))
  err(1, "strdup");
 args[nargs] = ((void*)0);
}
