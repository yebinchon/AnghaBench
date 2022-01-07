
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kobj_t ;


 int uaudio_chan_set_param_fragments (void*,int ,int ) ;

__attribute__((used)) static int
ua_chan_setfragments(kobj_t obj, void *data, uint32_t blocksize, uint32_t blockcount)
{
 return (uaudio_chan_set_param_fragments(data, blocksize, blockcount));
}
