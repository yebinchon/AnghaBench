
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;


 int M_RPC ;
 int free (struct netconfig**,int ) ;

int
endnetconfig(void * handle)
{
 struct netconfig **nconfp = (struct netconfig **) handle;

 free(nconfp, M_RPC);
 return (0);
}
