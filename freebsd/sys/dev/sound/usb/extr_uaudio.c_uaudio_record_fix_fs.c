
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMaxPacketSize; } ;
typedef TYPE_1__ usb_endpoint_descriptor_audio_t ;
typedef int uint32_t ;


 int DPRINTF (char*,int,int) ;
 int UGETW (int ) ;
 int USETW (int ,int) ;

__attribute__((used)) static void
uaudio_record_fix_fs(usb_endpoint_descriptor_audio_t *ep,
    uint32_t xps, uint32_t add)
{
 uint32_t mps;

 mps = UGETW(ep->wMaxPacketSize);





 if (mps > xps) {


  xps += add;


  if (xps > 1023)
   xps = 1023;


  if (mps < xps) {

   USETW(ep->wMaxPacketSize, xps);
   DPRINTF("Workaround: Updated wMaxPacketSize "
       "from %d to %d bytes.\n",
       (int)mps, (int)xps);
  }
 }
}
