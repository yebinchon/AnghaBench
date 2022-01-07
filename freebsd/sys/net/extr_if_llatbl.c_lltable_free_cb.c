
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int dummy; } ;
struct llentry {int dummy; } ;
struct llentries {int dummy; } ;


 int CK_LIST_INSERT_HEAD (struct llentries*,struct llentry*,int ) ;
 int LLE_WLOCK (struct llentry*) ;
 int lle_chain ;

__attribute__((used)) static int
lltable_free_cb(struct lltable *llt, struct llentry *lle, void *farg)
{
 struct llentries *dchain;

 dchain = (struct llentries *)farg;

 LLE_WLOCK(lle);
 CK_LIST_INSERT_HEAD(dchain, lle, lle_chain);

 return (0);
}
