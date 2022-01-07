
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * aka; int * name; } ;
typedef TYPE_1__ _TCBVAR ;


 TYPE_1__* g_tcb_info ;
 int tcb_code_err_exit (char*,char*) ;
 scalar_t__ tcb_strmatch_nc (char*,int *) ;

_TCBVAR *
lu_tcbvar(char *name)
{
  _TCBVAR *tvp=g_tcb_info;

  while (tvp->name!=((void*)0)) {
    if (tcb_strmatch_nc(name,tvp->name)) return tvp;
    else if (tcb_strmatch_nc(name,tvp->aka )) return tvp;
    tvp+=1;
  }
  tcb_code_err_exit("lu_tcbvar: bad name %s\n",name);
  return ((void*)0);
}
