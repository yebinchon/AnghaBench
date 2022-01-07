
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 int execv (char*,char**) ;

__attribute__((used)) static void
binexec(char *diffprog, char *f1, char *f2)
{

 char *args[] = {diffprog, f1, f2, (char *) 0};
 execv(diffprog, args);


 errx(1, "could not execute diff process");
}
