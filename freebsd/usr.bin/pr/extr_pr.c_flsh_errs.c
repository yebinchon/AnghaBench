
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 scalar_t__ err ;
 int fflush (scalar_t__) ;
 int * fgets (char*,int,scalar_t__) ;
 int fputs (char*,scalar_t__) ;
 int rewind (scalar_t__) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

void
flsh_errs(void)
{
 char buf[BUFSIZ];

 (void)fflush(stdout);
 (void)fflush(err);
 if (err == stderr)
  return;
 rewind(err);
 while (fgets(buf, BUFSIZ, err) != ((void*)0))
  (void)fputs(buf, stderr);
}
