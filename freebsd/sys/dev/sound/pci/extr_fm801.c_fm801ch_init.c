
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int dummy; } ;
struct fm801_chinfo {int dir; struct snd_dbuf* buffer; struct pcm_channel* channel; struct fm801_info* parent; } ;
struct fm801_info {int bufsz; int parent_dmat; struct fm801_chinfo rch; struct fm801_chinfo pch; } ;
typedef int kobj_t ;


 int DPRINT (char*,int) ;
 int PCMDIR_PLAY ;
 scalar_t__ sndbuf_alloc (struct snd_dbuf*,int ,int ,int ) ;

__attribute__((used)) static void *
fm801ch_init(kobj_t obj, void *devinfo, struct snd_dbuf *b, struct pcm_channel *c, int dir)
{
 struct fm801_info *fm801 = (struct fm801_info *)devinfo;
 struct fm801_chinfo *ch = (dir == PCMDIR_PLAY)? &fm801->pch : &fm801->rch;

 DPRINT("fm801ch_init, direction = %d\n", dir);
 ch->parent = fm801;
 ch->channel = c;
 ch->buffer = b;
 ch->dir = dir;
 if (sndbuf_alloc(ch->buffer, fm801->parent_dmat, 0, fm801->bufsz) != 0)
  return ((void*)0);
 return (void *)ch;
}
