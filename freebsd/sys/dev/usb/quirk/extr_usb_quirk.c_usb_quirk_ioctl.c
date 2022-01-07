
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct usb_quirk_entry {size_t* quirks; } ;
struct usb_gen_quirk {size_t index; int bcdDeviceHigh; int bcdDeviceLow; int pid; int vid; int quirkname; } ;
struct thread {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {size_t* quirks; int hi_rev; int lo_rev; int pid; int vid; } ;


 int EINVAL ;
 int ENOIOCTL ;
 int ENOMEM ;
 int PRIV_DRIVER ;
 size_t UQ_NONE ;
 size_t USB_DEV_QUIRKS_MAX ;



 int USB_MTX_LOCK (int *) ;
 int USB_MTX_UNLOCK (int *) ;
 size_t USB_QUIRK_MAX ;

 size_t USB_SUB_QUIRKS_MAX ;
 int curthread ;
 int memset (struct usb_quirk_entry*,int ,int) ;
 int priv_check (int ,int ) ;
 int strcmp (int ,int ) ;
 int strlcpy (int ,int ,int) ;
 struct usb_quirk_entry* usb_quirk_get_entry (int ,int ,int ,int ,int) ;
 int usb_quirk_mtx ;
 TYPE_1__* usb_quirks ;
 int usb_quirkstr (size_t) ;

__attribute__((used)) static int
usb_quirk_ioctl(unsigned long cmd, caddr_t data,
    int fflag, struct thread *td)
{
 struct usb_gen_quirk *pgq;
 struct usb_quirk_entry *pqe;
 uint32_t x;
 uint32_t y;
 int err;

 switch (cmd) {
 case 130:
  pgq = (void *)data;
  x = pgq->index % USB_SUB_QUIRKS_MAX;
  y = pgq->index / USB_SUB_QUIRKS_MAX;
  if (y >= USB_DEV_QUIRKS_MAX) {
   return (EINVAL);
  }
  USB_MTX_LOCK(&usb_quirk_mtx);

  pgq->vid = usb_quirks[y].vid;
  pgq->pid = usb_quirks[y].pid;
  pgq->bcdDeviceLow = usb_quirks[y].lo_rev;
  pgq->bcdDeviceHigh = usb_quirks[y].hi_rev;
  strlcpy(pgq->quirkname,
      usb_quirkstr(usb_quirks[y].quirks[x]),
      sizeof(pgq->quirkname));
  USB_MTX_UNLOCK(&usb_quirk_mtx);
  return (0);

 case 128:
  pgq = (void *)data;
  x = pgq->index;
  if (x >= USB_QUIRK_MAX) {
   return (EINVAL);
  }
  strlcpy(pgq->quirkname,
      usb_quirkstr(x), sizeof(pgq->quirkname));
  return (0);

 case 131:
  pgq = (void *)data;


  err = priv_check(curthread, PRIV_DRIVER);
  if (err) {
   return (err);
  }

  for (y = 0; y != USB_DEV_QUIRKS_MAX; y++) {
   if (strcmp(pgq->quirkname, usb_quirkstr(y)) == 0) {
    break;
   }
  }
  if (y == USB_DEV_QUIRKS_MAX) {
   return (EINVAL);
  }
  if (y == UQ_NONE) {
   return (EINVAL);
  }
  USB_MTX_LOCK(&usb_quirk_mtx);
  pqe = usb_quirk_get_entry(pgq->vid, pgq->pid,
      pgq->bcdDeviceLow, pgq->bcdDeviceHigh, 1);
  if (pqe == ((void*)0)) {
   USB_MTX_UNLOCK(&usb_quirk_mtx);
   return (EINVAL);
  }
  for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
   if (pqe->quirks[x] == UQ_NONE) {
    pqe->quirks[x] = y;
    break;
   }
  }
  USB_MTX_UNLOCK(&usb_quirk_mtx);
  if (x == USB_SUB_QUIRKS_MAX) {
   return (ENOMEM);
  }
  return (0);

 case 129:
  pgq = (void *)data;

  err = priv_check(curthread, PRIV_DRIVER);
  if (err) {
   return (err);
  }

  for (y = 0; y != USB_DEV_QUIRKS_MAX; y++) {
   if (strcmp(pgq->quirkname, usb_quirkstr(y)) == 0) {
    break;
   }
  }
  if (y == USB_DEV_QUIRKS_MAX) {
   return (EINVAL);
  }
  if (y == UQ_NONE) {
   return (EINVAL);
  }
  USB_MTX_LOCK(&usb_quirk_mtx);
  pqe = usb_quirk_get_entry(pgq->vid, pgq->pid,
      pgq->bcdDeviceLow, pgq->bcdDeviceHigh, 0);
  if (pqe == ((void*)0)) {
   USB_MTX_UNLOCK(&usb_quirk_mtx);
   return (EINVAL);
  }
  for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
   if (pqe->quirks[x] == y) {
    pqe->quirks[x] = UQ_NONE;
    break;
   }
  }
  if (x == USB_SUB_QUIRKS_MAX) {
   USB_MTX_UNLOCK(&usb_quirk_mtx);
   return (ENOMEM);
  }
  for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
   if (pqe->quirks[x] != UQ_NONE) {
    break;
   }
  }
  if (x == USB_SUB_QUIRKS_MAX) {

   memset(pqe, 0, sizeof(*pqe));
  }
  USB_MTX_UNLOCK(&usb_quirk_mtx);
  return (0);

 default:
  break;
 }
 return (ENOIOCTL);
}
