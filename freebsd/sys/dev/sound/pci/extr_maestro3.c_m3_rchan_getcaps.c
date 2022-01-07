
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_rchinfo {int adc_idx; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 int CALL ;
 int M3_DEBUG (int ,char*) ;
 struct pcmchan_caps m3_reccaps ;

__attribute__((used)) static struct pcmchan_caps *
m3_rchan_getcaps(kobj_t kobj, void *chdata)
{
 struct sc_rchinfo *ch = chdata;

        M3_DEBUG(CALL, ("m3_rchan_getcaps(adc=%d)\n", ch->adc_idx));

 return &m3_reccaps;
}
