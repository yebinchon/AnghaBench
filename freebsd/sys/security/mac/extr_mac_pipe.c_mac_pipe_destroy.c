
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipepair {int * pp_label; } ;


 int mac_pipe_label_free (int *) ;

void
mac_pipe_destroy(struct pipepair *pp)
{

 if (pp->pp_label != ((void*)0)) {
  mac_pipe_label_free(pp->pp_label);
  pp->pp_label = ((void*)0);
 }
}
