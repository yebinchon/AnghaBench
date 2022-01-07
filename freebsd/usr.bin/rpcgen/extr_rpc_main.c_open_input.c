
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addarg (char const*) ;
 int * arglist ;
 int childpid ;
 int close (int) ;
 int crash () ;
 int dup2 (int,int) ;
 int err (int,char*,...) ;
 int execvp (int ,int *) ;
 int * fdopen (int,char*) ;
 int * fin ;
 int fork () ;
 char* infilename ;
 int pipe (int*) ;
 int prepend_cpp () ;
 int warn (char*,char*) ;

__attribute__((used)) static void
open_input(const char *infile, const char *define)
{
 int pd[2];

 infilename = (infile == ((void*)0)) ? "<stdin>" : infile;
 (void) pipe(pd);
 switch (childpid = fork()) {
 case 0:
  prepend_cpp();
  addarg(define);
  if (infile)
   addarg(infile);
  addarg((char *)((void*)0));
  (void) close(1);
  (void) dup2(pd[1], 1);
  (void) close(pd[0]);
  execvp(arglist[0], arglist);
  err(1, "execvp %s", arglist[0]);
 case -1:
  err(1, "fork");
 }
 (void) close(pd[1]);
 fin = fdopen(pd[0], "r");
 if (fin == ((void*)0)) {
  warn("%s", infilename);
  crash();
 }
}
