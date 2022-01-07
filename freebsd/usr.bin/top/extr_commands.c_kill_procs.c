
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR (char*,int ) ;
 int ERR_RESET ;
 int NSIG ;
 int SIGTERM ;
 char const* bad_signal_name ;
 char const* err_string () ;
 int errno ;
 char const* invalid_signal_number ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isspace (char) ;
 int kill (int,int) ;
 char* next_field (char*) ;
 char const* no_proc_specified ;
 int scanint (char*,int*) ;
 int signame_to_signum (char*) ;

const char *
kill_procs(char *str)
{
    char *nptr;
    int signum = SIGTERM;
    int procnum;


    ERR_RESET;


    while (isspace(*str)) str++;

    if (str[0] == '-')
    {

 if ((nptr = next_field(str)) == ((void*)0))
 {
     return(no_proc_specified);
 }

 if (isdigit(str[1]))
 {
     scanint(str + 1, &signum);
     if (signum <= 0 || signum >= NSIG)
     {
  return(invalid_signal_number);
     }
 }
 else
 {
  signum = signame_to_signum(str + 1);


     if (signum == -1 )
     {
   return(bad_signal_name);
     }
 }

 str = nptr;
    }


    do
    {
 if (scanint(str, &procnum) == -1)
 {
     ERROR(str, 0);
 }
 else
 {

     if (kill(procnum, signum) == -1)
     {

  ERROR(str, errno);
     }
 }
    } while ((str = next_field(str)) != ((void*)0));


    return(err_string());
}
