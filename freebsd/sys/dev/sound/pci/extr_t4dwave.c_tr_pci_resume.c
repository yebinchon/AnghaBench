
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ was_active; } ;
struct tr_info {int playchns; TYPE_1__ recchinfo; TYPE_2__* chinfo; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ was_active; } ;


 int ENXIO ;
 int PCMTRIG_START ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 struct tr_info* pcm_getdevinfo (int ) ;
 int tr_init (struct tr_info*) ;
 int trpchan_trigger (int *,TYPE_2__*,int ) ;
 int trrchan_trigger (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
tr_pci_resume(device_t dev)
{
 int i;
 struct tr_info *tr;

 tr = pcm_getdevinfo(dev);

 if (tr_init(tr) == -1) {
  device_printf(dev, "unable to initialize the card\n");
  return ENXIO;
 }

 if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to initialize the mixer\n");
  return ENXIO;
 }

 for (i = 0; i < tr->playchns; i++) {
  if (tr->chinfo[i].was_active) {
   trpchan_trigger(((void*)0), &tr->chinfo[i], PCMTRIG_START);
  }
 }

 if (tr->recchinfo.was_active) {
  trrchan_trigger(((void*)0), &tr->recchinfo, PCMTRIG_START);
 }

 return 0;
}
