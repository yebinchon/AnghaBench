
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct via_info {scalar_t__ polling; TYPE_1__* rch; TYPE_1__* pch; int lock; int poll_timer; } ;
struct TYPE_2__ {int channel; } ;


 int NDXSCHANS ;
 int NMSGDCHANS ;
 int NWRCHANS ;
 int callout_reset (int *,int,void (*) (void*),struct via_info*) ;
 int chn_intr (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 scalar_t__ via_chan_active (struct via_info*) ;
 scalar_t__ via_poll_channel (TYPE_1__*) ;

__attribute__((used)) static void
via_poll_callback(void *arg)
{
 struct via_info *via = arg;
 uint32_t ptrigger = 0, rtrigger = 0;
 int i;

 if (via == ((void*)0))
  return;

 snd_mtxlock(via->lock);
 if (via->polling == 0 || via_chan_active(via) == 0) {
  snd_mtxunlock(via->lock);
  return;
 }

 for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++)
  ptrigger |= (via_poll_channel(&via->pch[i]) != 0) ?
      (1 << i) : 0;

 for (i = 0; i < NWRCHANS; i++)
  rtrigger |= (via_poll_channel(&via->rch[i]) != 0) ?
      (1 << i) : 0;


 callout_reset(&via->poll_timer, 1 ,
     via_poll_callback, via);

 snd_mtxunlock(via->lock);

 for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++) {
  if (ptrigger & (1 << i))
   chn_intr(via->pch[i].channel);
 }
 for (i = 0; i < NWRCHANS; i++) {
  if (rtrigger & (1 << i))
   chn_intr(via->rch[i].channel);
 }
}
