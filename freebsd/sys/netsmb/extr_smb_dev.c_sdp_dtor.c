
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_dev {int dummy; } ;


 int SMB_LOCK () ;
 int SMB_UNLOCK () ;
 int sdp_trydestroy (struct smb_dev*) ;

void
sdp_dtor(void *arg)
{
 struct smb_dev *dev;

 dev = (struct smb_dev *)arg;
 SMB_LOCK();
 sdp_trydestroy(dev);
 SMB_UNLOCK();
}
