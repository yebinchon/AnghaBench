
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reflog_expire_cfg {int expire_unreachable; int expire_total; int pattern; struct reflog_expire_cfg* next; } ;
struct cmd_reflog_expire_cb {int expire_unreachable; int expire_total; } ;


 int EXPIRE_TOTAL ;
 int EXPIRE_UNREACH ;
 int default_reflog_expire ;
 int default_reflog_expire_unreachable ;
 struct reflog_expire_cfg* reflog_expire_cfg ;
 int strcmp (char const*,char*) ;
 int wildmatch (int ,char const*,int ) ;

__attribute__((used)) static void set_reflog_expiry_param(struct cmd_reflog_expire_cb *cb, int slot, const char *ref)
{
 struct reflog_expire_cfg *ent;

 if (slot == (EXPIRE_TOTAL|EXPIRE_UNREACH))
  return;

 for (ent = reflog_expire_cfg; ent; ent = ent->next) {
  if (!wildmatch(ent->pattern, ref, 0)) {
   if (!(slot & EXPIRE_TOTAL))
    cb->expire_total = ent->expire_total;
   if (!(slot & EXPIRE_UNREACH))
    cb->expire_unreachable = ent->expire_unreachable;
   return;
  }
 }




 if (!strcmp(ref, "refs/stash")) {
  if (!(slot & EXPIRE_TOTAL))
   cb->expire_total = 0;
  if (!(slot & EXPIRE_UNREACH))
   cb->expire_unreachable = 0;
  return;
 }


 if (!(slot & EXPIRE_TOTAL))
  cb->expire_total = default_reflog_expire;
 if (!(slot & EXPIRE_UNREACH))
  cb->expire_unreachable = default_reflog_expire_unreachable;
}
