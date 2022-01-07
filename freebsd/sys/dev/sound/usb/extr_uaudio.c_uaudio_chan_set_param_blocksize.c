
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uaudio_chan {int buf; int pcm_buf; int set_alt; } ;


 int sndbuf_setup (int ,int ,int) ;
 int uaudio_get_buffer_size (struct uaudio_chan*,int ) ;

int
uaudio_chan_set_param_blocksize(struct uaudio_chan *ch, uint32_t blocksize)
{
 uint32_t temp = 2 * uaudio_get_buffer_size(ch, ch->set_alt);
 sndbuf_setup(ch->pcm_buf, ch->buf, temp);
 return (temp / 2);
}
