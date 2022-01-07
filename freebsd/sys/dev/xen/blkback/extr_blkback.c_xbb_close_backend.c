
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * cred; } ;
struct TYPE_4__ {int * cdev; int * csw; int dev_ref; } ;
struct TYPE_6__ {TYPE_2__ file; TYPE_1__ dev; } ;
struct xbb_softc {int flags; int device_type; TYPE_3__ backend; int * vn; int dev_name; } ;


 int DPRINTF (char*,int ) ;
 int DROP_GIANT () ;
 int FREAD ;
 int FWRITE ;
 int NOCRED ;
 int PICKUP_GIANT () ;
 int XBBF_READ_ONLY ;



 int crfree (int *) ;
 int curthread ;
 int dev_relthread (int *,int ) ;
 int panic (char*) ;
 int vn_close (int *,int,int ,int ) ;

__attribute__((used)) static void
xbb_close_backend(struct xbb_softc *xbb)
{
 DROP_GIANT();
 DPRINTF("closing dev=%s\n", xbb->dev_name);
 if (xbb->vn) {
  int flags = FREAD;

  if ((xbb->flags & XBBF_READ_ONLY) == 0)
   flags |= FWRITE;

  switch (xbb->device_type) {
  case 130:
   if (xbb->backend.dev.csw) {
    dev_relthread(xbb->backend.dev.cdev,
           xbb->backend.dev.dev_ref);
    xbb->backend.dev.csw = ((void*)0);
    xbb->backend.dev.cdev = ((void*)0);
   }
   break;
  case 129:
   break;
  case 128:
  default:
   panic("Unexpected backend type.");
   break;
  }

  (void)vn_close(xbb->vn, flags, NOCRED, curthread);
  xbb->vn = ((void*)0);

  switch (xbb->device_type) {
  case 130:
   break;
  case 129:
   if (xbb->backend.file.cred != ((void*)0)) {
    crfree(xbb->backend.file.cred);
    xbb->backend.file.cred = ((void*)0);
   }
   break;
  case 128:
  default:
   panic("Unexpected backend type.");
   break;
  }
 }
 PICKUP_GIANT();
}
