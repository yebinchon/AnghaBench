
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pcm_channel {int timeout; int devinfo; int methods; int dev; int flags; scalar_t__ xruns; scalar_t__ interrupts; scalar_t__ feedcount; } ;


 int CHANNEL_RESET (int ,int ) ;
 int CHANNEL_RESETDONE (int ,int ) ;
 int CHN_F_BITPERFECT ;
 int CHN_F_RESET ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int SD_F_BITPERFECT ;
 int chn_latency ;
 int chn_resetbuf (struct pcm_channel*) ;
 int chn_setformat (struct pcm_channel*,scalar_t__) ;
 int chn_setlatency (struct pcm_channel*,int ) ;
 int chn_setparam (struct pcm_channel*,scalar_t__,scalar_t__) ;
 int chn_setspeed (struct pcm_channel*,scalar_t__) ;
 int pcm_getflags (int ) ;

int
chn_reset(struct pcm_channel *c, uint32_t fmt, uint32_t spd)
{
 int r;

 CHN_LOCKASSERT(c);
 c->feedcount = 0;
 c->flags &= CHN_F_RESET;
 c->interrupts = 0;
 c->timeout = 1;
 c->xruns = 0;

 c->flags |= (pcm_getflags(c->dev) & SD_F_BITPERFECT) ?
     CHN_F_BITPERFECT : 0;

 r = CHANNEL_RESET(c->methods, c->devinfo);
 if (r == 0 && fmt != 0 && spd != 0) {
  r = chn_setparam(c, fmt, spd);
  fmt = 0;
  spd = 0;
 }
 if (r == 0 && fmt != 0)
  r = chn_setformat(c, fmt);
 if (r == 0 && spd != 0)
  r = chn_setspeed(c, spd);
 if (r == 0)
  r = chn_setlatency(c, chn_latency);
 if (r == 0) {
  chn_resetbuf(c);
  r = CHANNEL_RESETDONE(c->methods, c->devinfo);
 }
 return r;
}
