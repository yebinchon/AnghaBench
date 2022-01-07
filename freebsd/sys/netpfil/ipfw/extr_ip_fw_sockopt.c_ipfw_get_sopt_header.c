
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_data {scalar_t__ kavail; scalar_t__ koff; scalar_t__ kbuf; } ;
typedef int * caddr_t ;


 int * ipfw_get_sopt_space (struct sockopt_data*,size_t) ;
 int memset (scalar_t__,int ,scalar_t__) ;

caddr_t
ipfw_get_sopt_header(struct sockopt_data *sd, size_t needed)
{
 caddr_t addr;

 if ((addr = ipfw_get_sopt_space(sd, needed)) == ((void*)0))
  return (((void*)0));

 if (sd->kavail > 0)
  memset(sd->kbuf + sd->koff, 0, sd->kavail);

 return (addr);
}
