
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa; } ;
struct TYPE_3__ {int sa; } ;
struct secpolicyindex {scalar_t__ prefs; scalar_t__ prefd; scalar_t__ ul_proto; scalar_t__ dir; TYPE_2__ dst; TYPE_1__ src; } ;


 scalar_t__ key_sockaddrcmp (int *,int *,int) ;

__attribute__((used)) static int
key_cmpspidx_exactly(struct secpolicyindex *spidx0,
    struct secpolicyindex *spidx1)
{

 if (spidx0 == ((void*)0) && spidx1 == ((void*)0))
  return 1;

 if (spidx0 == ((void*)0) || spidx1 == ((void*)0))
  return 0;

 if (spidx0->prefs != spidx1->prefs
  || spidx0->prefd != spidx1->prefd
  || spidx0->ul_proto != spidx1->ul_proto
  || spidx0->dir != spidx1->dir)
  return 0;

 return key_sockaddrcmp(&spidx0->src.sa, &spidx1->src.sa, 1) == 0 &&
        key_sockaddrcmp(&spidx0->dst.sa, &spidx1->dst.sa, 1) == 0;
}
