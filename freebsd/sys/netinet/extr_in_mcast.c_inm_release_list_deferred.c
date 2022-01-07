
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi_head {int dummy; } ;


 int GROUPTASK_ENQUEUE (int *) ;
 int SLIST_CONCAT (int *,struct in_multi_head*,int ,int ) ;
 scalar_t__ SLIST_EMPTY (struct in_multi_head*) ;
 int free_gtask ;
 int in_multi ;
 int in_multi_free_mtx ;
 int inm_free_list ;
 int inm_nrele ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
inm_release_list_deferred(struct in_multi_head *inmh)
{

 if (SLIST_EMPTY(inmh))
  return;
 mtx_lock(&in_multi_free_mtx);
 SLIST_CONCAT(&inm_free_list, inmh, in_multi, inm_nrele);
 mtx_unlock(&in_multi_free_mtx);
 GROUPTASK_ENQUEUE(&free_gtask);
}
