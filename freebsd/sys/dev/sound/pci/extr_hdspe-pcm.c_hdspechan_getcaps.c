
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_pcminfo {int dummy; } ;
struct sc_chinfo {scalar_t__ dir; struct sc_pcminfo* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PCMDIR_PLAY ;
 int device_printf (int ,char*) ;
 struct pcmchan_caps hdspe_pcaps ;
 struct pcmchan_caps hdspe_rcaps ;
 TYPE_1__* scp ;

__attribute__((used)) static struct pcmchan_caps *
hdspechan_getcaps(kobj_t obj, void *data)
{
 struct sc_chinfo *ch;

 ch = data;






 return ((ch->dir == PCMDIR_PLAY) ?
     &hdspe_pcaps : &hdspe_rcaps);
}
