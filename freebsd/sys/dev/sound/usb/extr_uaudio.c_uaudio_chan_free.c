
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_chan {scalar_t__ num_alt; int xfer; int * buf; } ;


 int M_DEVBUF ;
 scalar_t__ UAUDIO_NCHANBUFS ;
 int free (int *,int ) ;
 int usbd_transfer_unsetup (int ,scalar_t__) ;

int
uaudio_chan_free(struct uaudio_chan *ch)
{
 if (ch->buf != ((void*)0)) {
  free(ch->buf, M_DEVBUF);
  ch->buf = ((void*)0);
 }
 usbd_transfer_unsetup(ch->xfer, UAUDIO_NCHANBUFS + 1);

 ch->num_alt = 0;

 return (0);
}
