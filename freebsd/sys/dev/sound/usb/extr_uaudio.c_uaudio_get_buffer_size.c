
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct uaudio_chan_alt {int sample_size; int sample_rate; } ;
struct uaudio_chan {struct uaudio_chan_alt* usb_alt; } ;


 int UAUDIO_NFRAMES ;
 int howmany (int,int) ;

__attribute__((used)) static uint32_t
uaudio_get_buffer_size(struct uaudio_chan *ch, uint8_t alt)
{
 struct uaudio_chan_alt *chan_alt = &ch->usb_alt[alt];

 uint32_t buf_size = chan_alt->sample_size *
     howmany(chan_alt->sample_rate * (UAUDIO_NFRAMES / 8), 1000);
 return (buf_size);
}
