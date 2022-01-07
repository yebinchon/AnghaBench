
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_link {int expire_time; int flags; } ;


 int DeleteLink (struct alias_link*) ;
 int LINK_PERMANENT ;
 int fprintf (int ,char*) ;
 int stderr ;

void
SetExpire(struct alias_link *lnk, int expire)
{
 if (expire == 0) {
  lnk->flags &= ~LINK_PERMANENT;
  DeleteLink(lnk);
 } else if (expire == -1) {
  lnk->flags |= LINK_PERMANENT;
 } else if (expire > 0) {
  lnk->expire_time = expire;
 } else {




 }
}
