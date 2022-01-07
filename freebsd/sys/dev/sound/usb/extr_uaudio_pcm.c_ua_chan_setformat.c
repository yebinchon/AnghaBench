
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kobj_t ;


 int uaudio_chan_set_param_format (void*,int ) ;

__attribute__((used)) static int
ua_chan_setformat(kobj_t obj, void *data, uint32_t format)
{




 return (uaudio_chan_set_param_format(data, format));
}
