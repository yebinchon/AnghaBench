
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 char** arglist ;
 int argmax ;
 int crash () ;
 int free (char**) ;
 char** realloc (char**,int) ;
 int warnx (char*) ;

__attribute__((used)) static void
moreargs(void)
{
 char **newarglist;

 argmax = argmax == 0 ? 32 : argmax << 1;
 if (argmax > INT_MAX / 4) {
  warnx("refusing to allocate too many arguments");
  crash();
 }
 newarglist = realloc(arglist, argmax * sizeof(*arglist));
 if (newarglist == ((void*)0)) {
  warnx("unable to allocate arglist");
  crash();
 }
 free(arglist);
 arglist = newarglist;
}
