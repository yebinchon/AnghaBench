
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uaudio_chan {int dummy; } ;


 int DPRINTF (char*,unsigned int) ;

int
uaudio_chan_set_param_format(struct uaudio_chan *ch, uint32_t format)
{
 DPRINTF("Selecting format 0x%08x\n", (unsigned int)format);
 return (0);
}
