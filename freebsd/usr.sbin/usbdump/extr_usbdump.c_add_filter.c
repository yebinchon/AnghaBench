
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_filt {int unit; int endpoint; } ;


 int EX_SOFTWARE ;
 int STAILQ_INSERT_TAIL (int *,struct usb_filt*,int ) ;
 int entry ;
 int errx (int ,char*) ;
 struct usb_filt* malloc (int) ;
 int usb_filt_head ;

__attribute__((used)) static void
add_filter(int usb_filt_unit, int usb_filt_ep)
{
 struct usb_filt *puf;

 puf = malloc(sizeof(struct usb_filt));
 if (puf == ((void*)0))
  errx(EX_SOFTWARE, "Out of memory.");

 puf->unit = usb_filt_unit;
 puf->endpoint = usb_filt_ep;

 STAILQ_INSERT_TAIL(&usb_filt_head, puf, entry);
}
