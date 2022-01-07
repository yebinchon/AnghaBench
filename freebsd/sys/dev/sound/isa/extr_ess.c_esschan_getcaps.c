
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct ess_chinfo {scalar_t__ dir; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 struct pcmchan_caps ess_playcaps ;
 struct pcmchan_caps ess_reccaps ;

__attribute__((used)) static struct pcmchan_caps *
esschan_getcaps(kobj_t obj, void *data)
{
 struct ess_chinfo *ch = data;

 return (ch->dir == PCMDIR_PLAY)? &ess_playcaps : &ess_reccaps;
}
