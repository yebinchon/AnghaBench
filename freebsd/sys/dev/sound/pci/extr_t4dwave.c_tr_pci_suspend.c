
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ active; scalar_t__ was_active; } ;
struct tr_info {int playchns; TYPE_1__ recchinfo; TYPE_2__* chinfo; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ was_active; } ;


 int PCMTRIG_STOP ;
 struct tr_info* pcm_getdevinfo (int ) ;
 int trpchan_trigger (int *,TYPE_2__*,int ) ;
 int trrchan_trigger (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
tr_pci_suspend(device_t dev)
{
 int i;
 struct tr_info *tr;

 tr = pcm_getdevinfo(dev);

 for (i = 0; i < tr->playchns; i++) {
  tr->chinfo[i].was_active = tr->chinfo[i].active;
  if (tr->chinfo[i].active) {
   trpchan_trigger(((void*)0), &tr->chinfo[i], PCMTRIG_STOP);
  }
 }

 tr->recchinfo.was_active = tr->recchinfo.active;
 if (tr->recchinfo.active) {
  trrchan_trigger(((void*)0), &tr->recchinfo, PCMTRIG_STOP);
 }

 return 0;
}
