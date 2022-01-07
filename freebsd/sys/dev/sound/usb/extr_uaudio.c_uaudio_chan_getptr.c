
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_chan {int cur; int start; } ;



int
uaudio_chan_getptr(struct uaudio_chan *ch)
{
 return (ch->cur - ch->start);
}
