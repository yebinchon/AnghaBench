
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int co_interlock; } ;


 int SMBL_SM ;
 int smb_co_init (TYPE_1__*,int ,char*,char*) ;
 int smb_co_unlock (TYPE_1__*) ;
 TYPE_1__ smb_vclist ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

int
smb_sm_init(void)
{

 smb_co_init(&smb_vclist, SMBL_SM, "smbsm ilock", "smbsm");
 sx_xlock(&smb_vclist.co_interlock);
 smb_co_unlock(&smb_vclist);
 sx_unlock(&smb_vclist.co_interlock);
 return 0;
}
