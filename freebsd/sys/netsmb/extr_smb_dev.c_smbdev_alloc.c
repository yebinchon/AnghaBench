
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_dev {int sd_level; int refcount; int sd_flags; struct cdev* dev; } ;
struct cdev {int dummy; } ;


 int M_NSMBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int NSMBFL_OPEN ;
 struct smb_dev* malloc (int,int ,int) ;

__attribute__((used)) static struct smb_dev *
smbdev_alloc(struct cdev *dev)
{
 struct smb_dev *sdp;

 sdp = malloc(sizeof(struct smb_dev), M_NSMBDEV, M_WAITOK | M_ZERO);
 sdp->dev = dev;
 sdp->sd_level = -1;
 sdp->sd_flags |= NSMBFL_OPEN;
 sdp->refcount = 1;
 return (sdp);
}
