
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 scalar_t__ SIG_IGN ;
 scalar_t__ across ;
 int clcnt ;
 scalar_t__ errcnt ;
 int exit (int) ;
 int flsh_errs () ;
 int free (int ) ;
 int horzcol (int,char**) ;
 scalar_t__ merge ;
 int mulfile (int,char**) ;
 int onecol (int,char**) ;
 int setup (int,char**) ;
 scalar_t__ signal (int ,scalar_t__) ;
 scalar_t__ terminate ;
 int timefrmt ;
 int usage () ;
 int vertcol (int,char**) ;

int
main(int argc, char *argv[])
{
 int ret_val;

 if (signal(SIGINT, SIG_IGN) != SIG_IGN)
  (void)signal(SIGINT, terminate);
 ret_val = setup(argc, argv);
 if (!ret_val) {



  if (merge)
   ret_val = mulfile(argc, argv);
  else if (clcnt == 1)
   ret_val = onecol(argc, argv);
  else if (across)
   ret_val = horzcol(argc, argv);
  else
   ret_val = vertcol(argc, argv);
  free(timefrmt);
 } else
  usage();
 flsh_errs();
 if (errcnt || ret_val)
  exit(1);
 return(0);
}
