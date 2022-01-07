
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_UIDINFO ;
 int hashinit (int,int ,int *) ;
 int maxproc ;
 int rw_init (int *,char*) ;
 int uihash ;
 int uihashtbl ;
 int uihashtbl_lock ;

void
uihashinit()
{

 uihashtbl = hashinit(maxproc / 16, M_UIDINFO, &uihash);
 rw_init(&uihashtbl_lock, "uidinfo hash");
}
