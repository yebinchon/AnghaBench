
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcmchan_matrix {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_matrix* uaudio_chan_getmatrix (void*,int ) ;

__attribute__((used)) static struct pcmchan_matrix *
ua_chan_getmatrix(kobj_t obj, void *data, uint32_t format)
{
 return (uaudio_chan_getmatrix(data, format));
}
