
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_IPFW ;
 int * ctl3_rewriters ;
 scalar_t__ ctl3_rsize ;
 int free (int *,int ) ;

void
ipfw_destroy_obj_rewriter()
{

 if (ctl3_rewriters != ((void*)0))
  free(ctl3_rewriters, M_IPFW);
 ctl3_rewriters = ((void*)0);
 ctl3_rsize = 0;
}
