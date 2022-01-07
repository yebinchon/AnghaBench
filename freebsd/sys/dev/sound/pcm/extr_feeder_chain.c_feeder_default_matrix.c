
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcmchan_matrix {int id; int* offset; int ext; int channels; } ;


 int AFMT_CHANNEL (int ) ;
 int AFMT_EXTCHANNEL (int ) ;
 int SND_CHN_T_MAX ;
 int memset (struct pcmchan_matrix*,int ,int) ;

__attribute__((used)) static void
feeder_default_matrix(struct pcmchan_matrix *m, uint32_t fmt, int id)
{
 int x;

 memset(m, 0, sizeof(*m));

 m->id = id;
 m->channels = AFMT_CHANNEL(fmt);
 m->ext = AFMT_EXTCHANNEL(fmt);
 for (x = 0; x != SND_CHN_T_MAX; x++)
  m->offset[x] = -1;
}
