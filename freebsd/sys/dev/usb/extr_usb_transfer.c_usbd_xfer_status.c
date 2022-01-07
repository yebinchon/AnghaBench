
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int actlen; int sumlen; int aframes; int nframes; } ;



void
usbd_xfer_status(struct usb_xfer *xfer, int *actlen, int *sumlen, int *aframes,
    int *nframes)
{
 if (actlen != ((void*)0))
  *actlen = xfer->actlen;
 if (sumlen != ((void*)0))
  *sumlen = xfer->sumlen;
 if (aframes != ((void*)0))
  *aframes = xfer->aframes;
 if (nframes != ((void*)0))
  *nframes = xfer->nframes;
}
