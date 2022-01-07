
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_3__* sc_p ;
struct TYPE_5__ {int arg; int (* intr ) (int ) ;} ;
struct TYPE_4__ {int arg; int (* intr ) (int ) ;} ;
struct TYPE_6__ {TYPE_2__ midi_intr; int * io; TYPE_1__ pcm_intr; } ;


 int port_rd (int ,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
gusc_intr(void *arg)
{
 sc_p scp = (sc_p)arg;
 int did_something;

 do {
  did_something = 0;
  if (scp->pcm_intr.intr != ((void*)0) &&
      (port_rd(scp->io[2], 2) & 1)) {
   (*scp->pcm_intr.intr)(scp->pcm_intr.arg);
   did_something = 1;
  }
  if (scp->midi_intr.intr != ((void*)0) &&
      (port_rd(scp->io[1], 0) & 0x80)) {
   (*scp->midi_intr.intr)(scp->midi_intr.arg);
   did_something = 1;
  }
 } while (did_something != 0);
}
