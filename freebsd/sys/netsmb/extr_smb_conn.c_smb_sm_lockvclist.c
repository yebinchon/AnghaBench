
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int co_interlock; } ;


 int smb_co_lock (TYPE_1__*) ;
 TYPE_1__ smb_vclist ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static int
smb_sm_lockvclist(void)
{
 int error;

 sx_xlock(&smb_vclist.co_interlock);
 error = smb_co_lock(&smb_vclist);
 sx_unlock(&smb_vclist.co_interlock);

 return error;
}
