
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_multi_head {int dummy; } ;
struct in_multi {scalar_t__ inm_refcount; TYPE_1__* inm_ifma; } ;
struct TYPE_2__ {int * ifma_protospec; } ;


 int IN_MULTI_LIST_LOCK_ASSERT () ;
 int MPASS (int) ;
 int SLIST_INIT (struct in_multi_head*) ;
 int SLIST_INSERT_HEAD (struct in_multi_head*,struct in_multi*,int ) ;
 int inm_disconnect (struct in_multi*) ;
 int inm_nrele ;
 int inm_release_list_deferred (struct in_multi_head*) ;

void
inm_release_deferred(struct in_multi *inm)
{
 struct in_multi_head tmp;

 IN_MULTI_LIST_LOCK_ASSERT();
 MPASS(inm->inm_refcount > 0);
 if (--inm->inm_refcount == 0) {
  SLIST_INIT(&tmp);
  inm_disconnect(inm);
  inm->inm_ifma->ifma_protospec = ((void*)0);
  SLIST_INSERT_HEAD(&tmp, inm, inm_nrele);
  inm_release_list_deferred(&tmp);
 }
}
