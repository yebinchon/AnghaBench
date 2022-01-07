
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {int iod_state; } ;


 int SMBIOD_ST_DEAD ;
 int smb_iod_closetran (struct smbiod*) ;
 int smb_iod_invrq (struct smbiod*) ;

__attribute__((used)) static void
smb_iod_dead(struct smbiod *iod)
{
 iod->iod_state = SMBIOD_ST_DEAD;
 smb_iod_closetran(iod);
 smb_iod_invrq(iod);
}
