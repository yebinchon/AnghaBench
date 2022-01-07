
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int co_usecount; } ;


 int EBUSY ;
 int SMBERROR (char*,int) ;
 int smb_co_done (TYPE_1__*) ;
 TYPE_1__ smb_vclist ;

int
smb_sm_done(void)
{


 if (smb_vclist.co_usecount > 1) {
  SMBERROR("%d connections still active\n", smb_vclist.co_usecount - 1);
  return EBUSY;
 }
 smb_co_done(&smb_vclist);
 return 0;
}
