
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {int co_level; int co_usecount; int co_interlock; int * co_locker; scalar_t__ co_lockcnt; int co_lock; int co_children; } ;


 int SLIST_INIT (int *) ;
 int SX_RECURSE ;
 int cv_init (int *,char*) ;
 int smb_co_lock (struct smb_connobj*) ;
 int sx_init_flags (int *,char*,int ) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
smb_co_init(struct smb_connobj *cp, int level, char *ilockname, char *lockname)
{
 SLIST_INIT(&cp->co_children);
 sx_init_flags(&cp->co_interlock, ilockname, SX_RECURSE);
 cv_init(&cp->co_lock, "smblock");
 cp->co_lockcnt = 0;
 cp->co_locker = ((void*)0);
 cp->co_level = level;
 cp->co_usecount = 1;
 sx_xlock(&cp->co_interlock);
 smb_co_lock(cp);
 sx_unlock(&cp->co_interlock);
}
