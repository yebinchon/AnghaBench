
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int channel; } ;
struct atiixp_info {scalar_t__ polling; TYPE_1__ rch; TYPE_1__ pch; int poll_timer; } ;


 scalar_t__ atiixp_chan_active (struct atiixp_info*) ;
 int atiixp_lock (struct atiixp_info*) ;
 scalar_t__ atiixp_poll_channel (TYPE_1__*) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int callout_reset (int *,int,void (*) (void*),struct atiixp_info*) ;
 int chn_intr (int ) ;

__attribute__((used)) static void
atiixp_poll_callback(void *arg)
{
 struct atiixp_info *sc = arg;
 uint32_t trigger = 0;

 if (sc == ((void*)0))
  return;

 atiixp_lock(sc);
 if (sc->polling == 0 || atiixp_chan_active(sc) == 0) {
  atiixp_unlock(sc);
  return;
 }

 trigger |= (atiixp_poll_channel(&sc->pch) != 0) ? 1 : 0;
 trigger |= (atiixp_poll_channel(&sc->rch) != 0) ? 2 : 0;


 callout_reset(&sc->poll_timer, 1 ,
     atiixp_poll_callback, sc);

 atiixp_unlock(sc);

 if (trigger & 1)
  chn_intr(sc->pch.channel);
 if (trigger & 2)
  chn_intr(sc->rch.channel);
}
