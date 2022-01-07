
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {int dac_idx; } ;
struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 int CALL ;
 int M3_DEBUG (int ,char*) ;
 struct pcmchan_caps m3_playcaps ;

__attribute__((used)) static struct pcmchan_caps *
m3_pchan_getcaps(kobj_t kobj, void *chdata)
{
 struct sc_pchinfo *ch = chdata;

        M3_DEBUG(CALL, ("m3_pchan_getcaps(dac=%d)\n", ch->dac_idx));

 return &m3_playcaps;
}
