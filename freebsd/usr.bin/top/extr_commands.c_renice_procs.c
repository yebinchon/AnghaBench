
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR (char*,int ) ;
 int ERR_RESET ;
 int PRIO_MAX ;
 int PRIO_MIN ;
 int PRIO_PROCESS ;
 char const* bad_pri_value ;
 char const* err_string () ;
 int errno ;
 char* next_field (char*) ;
 char const* no_proc_specified ;
 int scanint (char*,int*) ;
 int setpriority (int ,int,int) ;

const char *
renice_procs(char *str)
{
    char negate;
    int prio;
    int procnum;

    ERR_RESET;


    if ((negate = (*str == '-')) != 0)
    {

 str++;
    }


    procnum = scanint(str, &prio);


    if (negate)
    {
 prio = -prio;
    }


    if (procnum == -1 || prio < PRIO_MIN || prio > PRIO_MAX)
    {
 return(bad_pri_value);
    }


    if ((str = next_field(str)) == ((void*)0))
    {
 return(no_proc_specified);
    }


    do
    {
 if (scanint(str, &procnum) == -1)
 {
     ERROR(str, 0);
 }

 if (setpriority(PRIO_PROCESS, procnum, prio) == -1)
 {
     ERROR(str, errno);
 }
    } while ((str = next_field(str)) != ((void*)0));


    return(err_string());
}
