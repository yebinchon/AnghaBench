
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kobj_t ;


 int uaudio_chan_getptr (void*) ;

__attribute__((used)) static uint32_t
ua_chan_getptr(kobj_t obj, void *data)
{
 return (uaudio_chan_getptr(data));
}
