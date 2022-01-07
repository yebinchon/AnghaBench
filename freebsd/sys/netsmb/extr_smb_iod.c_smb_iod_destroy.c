
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {int dummy; } ;


 int SMBIOD_EV_SHUTDOWN ;
 int SMBIOD_EV_SYNC ;
 int smb_iod_request (struct smbiod*,int,int *) ;

int
smb_iod_destroy(struct smbiod *iod)
{
 smb_iod_request(iod, SMBIOD_EV_SHUTDOWN | SMBIOD_EV_SYNC, ((void*)0));
 return 0;
}
