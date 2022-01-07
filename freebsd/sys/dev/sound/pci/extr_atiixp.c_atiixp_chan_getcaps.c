
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct atiixp_chinfo {scalar_t__ caps_32bit; } ;
typedef int kobj_t ;


 struct pcmchan_caps atiixp_caps ;
 struct pcmchan_caps atiixp_caps_32bit ;

__attribute__((used)) static struct pcmchan_caps *
atiixp_chan_getcaps(kobj_t obj, void *data)
{
 struct atiixp_chinfo *ch = data;

 if (ch->caps_32bit)
  return (&atiixp_caps_32bit);
 return (&atiixp_caps);
}
