
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_head {int dummy; } ;


 int GROUPTASK_ENQUEUE (int *) ;
 int SLIST_CONCAT (int *,struct in6_multi_head*,int ,int ) ;
 scalar_t__ SLIST_EMPTY (struct in6_multi_head*) ;
 int free_gtask ;
 int in6_multi ;
 int in6_multi_free_mtx ;
 int in6m_free_list ;
 int in6m_nrele ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
in6m_release_list_deferred(struct in6_multi_head *inmh)
{
 if (SLIST_EMPTY(inmh))
  return;
 mtx_lock(&in6_multi_free_mtx);
 SLIST_CONCAT(&in6m_free_list, inmh, in6_multi, in6m_nrele);
 mtx_unlock(&in6_multi_free_mtx);
 GROUPTASK_ENQUEUE(&free_gtask);
}
