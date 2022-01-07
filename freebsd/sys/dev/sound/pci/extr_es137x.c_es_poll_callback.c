
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct es_info {scalar_t__ polling; TYPE_1__* ch; int poll_timer; } ;
struct TYPE_2__ {int channel; } ;


 int ES_LOCK (struct es_info*) ;
 int ES_NCHANS ;
 int ES_UNLOCK (struct es_info*) ;
 int callout_reset (int *,int,void (*) (void*),struct es_info*) ;
 int chn_intr (int ) ;
 scalar_t__ es_chan_active (struct es_info*) ;
 scalar_t__ es_poll_channel (TYPE_1__*) ;

__attribute__((used)) static void
es_poll_callback(void *arg)
{
 struct es_info *es = arg;
 uint32_t trigger = 0;
 int i;

 if (es == ((void*)0))
  return;

 ES_LOCK(es);
 if (es->polling == 0 || es_chan_active(es) == 0) {
  ES_UNLOCK(es);
  return;
 }

 for (i = 0; i < ES_NCHANS; i++) {
  if (es_poll_channel(&es->ch[i]) != 0)
   trigger |= 1 << i;
 }


 callout_reset(&es->poll_timer, 1 ,
     es_poll_callback, es);

 ES_UNLOCK(es);

 for (i = 0; i < ES_NCHANS; i++) {
  if (trigger & (1 << i))
   chn_intr(es->ch[i].channel);
 }
}
