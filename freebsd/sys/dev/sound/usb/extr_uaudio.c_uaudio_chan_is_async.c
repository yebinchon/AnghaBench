
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct uaudio_chan {TYPE_2__* usb_alt; } ;
struct TYPE_4__ {TYPE_1__* p_ed1; } ;
struct TYPE_3__ {size_t bmAttributes; } ;


 scalar_t__ UE_GET_ISO_TYPE (size_t) ;
 scalar_t__ UE_ISO_ASYNC ;

__attribute__((used)) static int
uaudio_chan_is_async(struct uaudio_chan *ch, uint8_t alt)
{
 uint8_t attr = ch->usb_alt[alt].p_ed1->bmAttributes;
 return (UE_GET_ISO_TYPE(attr) == UE_ISO_ASYNC);
}
