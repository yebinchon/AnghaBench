
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct csa_chinfo {scalar_t__ dir; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 struct pcmchan_caps csa_playcaps ;
 struct pcmchan_caps csa_reccaps ;

__attribute__((used)) static struct pcmchan_caps *
csachan_getcaps(kobj_t obj, void *data)
{
 struct csa_chinfo *ch = data;
 return (ch->dir == PCMDIR_PLAY)? &csa_playcaps : &csa_reccaps;
}
