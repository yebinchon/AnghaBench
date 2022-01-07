
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*) ;
 int xo_finish () ;

__attribute__((used)) static void
usage(void)
{
 xo_error("usage: lastlogin [-f file] [-rt] [user ...]\n");
 xo_finish();
 exit(1);
}
