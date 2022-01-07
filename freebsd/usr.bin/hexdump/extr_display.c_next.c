
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPH_READ ;
 char** _argv ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stream (int ,int ) ;
 int doskip (char*,int) ;
 int err (int,char*,...) ;
 int exitval ;
 int fileno (int ) ;
 int freopen (char*,char*,int ) ;
 scalar_t__ skip ;
 int stdin ;
 int warn (char*,char*) ;

int
next(char **argv)
{
 static int done;
 int statok;

 if (argv) {
  _argv = argv;
  return(1);
 }
 for (;;) {
  if (*_argv) {
   done = 1;
   if (!(freopen(*_argv, "r", stdin))) {
    warn("%s", *_argv);
    exitval = 1;
    ++_argv;
    continue;
   }
   statok = 1;
  } else {
   if (done++)
    return(0);
   statok = 0;
  }

  if (caph_limit_stream(fileno(stdin), CAPH_READ) < 0)
   err(1, "unable to restrict %s",
       statok ? *_argv : "stdin");




  if (statok == 0 || *(_argv + 1) == ((void*)0)) {
   if (caph_enter() < 0)
    err(1, "unable to enter capability mode");
  }

  if (skip)
   doskip(statok ? *_argv : "stdin", statok);
  if (*_argv)
   ++_argv;
  if (!skip)
   return(1);
 }

}
