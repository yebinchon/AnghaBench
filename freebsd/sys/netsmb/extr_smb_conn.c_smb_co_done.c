
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_connobj {scalar_t__ co_lockcnt; scalar_t__ co_flags; int * co_locker; int co_lock; int co_interlock; } ;


 int cv_destroy (int *) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
smb_co_done(struct smb_connobj *cp)
{

 sx_destroy(&cp->co_interlock);
 cv_destroy(&cp->co_lock);
 cp->co_locker = ((void*)0);
 cp->co_flags = 0;
 cp->co_lockcnt = 0;
}
