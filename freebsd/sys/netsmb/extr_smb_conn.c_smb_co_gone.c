
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_cred {int dummy; } ;
struct smb_connobj {int (* co_free ) (struct smb_connobj*) ;int co_children; int co_interlock; struct smb_connobj* co_parent; int (* co_gone ) (struct smb_connobj*,struct smb_cred*) ;} ;


 int SLIST_REMOVE (int *,struct smb_connobj*,int ,int ) ;
 int co_next ;
 int smb_co_lock (struct smb_connobj*) ;
 int smb_co_put (struct smb_connobj*,struct smb_cred*) ;
 int smb_connobj ;
 int stub1 (struct smb_connobj*,struct smb_cred*) ;
 int stub2 (struct smb_connobj*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
smb_co_gone(struct smb_connobj *cp, struct smb_cred *scred)
{
 struct smb_connobj *parent;

 if (cp->co_gone)
  cp->co_gone(cp, scred);
 parent = cp->co_parent;
 if (parent) {
  sx_xlock(&parent->co_interlock);
  smb_co_lock(parent);
  sx_unlock(&parent->co_interlock);
  SLIST_REMOVE(&parent->co_children, cp, smb_connobj, co_next);
  smb_co_put(parent, scred);
 }
 if (cp->co_free)
  cp->co_free(cp);
}
