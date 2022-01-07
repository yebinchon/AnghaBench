
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int co_interlock; } ;


 int smb_co_unlock (TYPE_1__*) ;
 TYPE_1__ smb_vclist ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
smb_sm_unlockvclist(void)
{

 sx_xlock(&smb_vclist.co_interlock);
 smb_co_unlock(&smb_vclist);
 sx_unlock(&smb_vclist.co_interlock);
}
