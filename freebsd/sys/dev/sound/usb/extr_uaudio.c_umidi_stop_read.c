
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct umidi_sub_chan {scalar_t__ read_open; } ;
struct umidi_chan {scalar_t__ read_open_refcount; } ;


 int DPRINTF (char*) ;
 struct umidi_sub_chan* umidi_sub_by_fifo (struct usb_fifo*) ;
 struct umidi_chan* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
umidi_stop_read(struct usb_fifo *fifo)
{
 struct umidi_chan *chan = usb_fifo_softc(fifo);
 struct umidi_sub_chan *sub = umidi_sub_by_fifo(fifo);

 DPRINTF("\n");

 sub->read_open = 0;

 if (--(chan->read_open_refcount) == 0) {




  DPRINTF("(stopping read transfer)\n");
 }
}
