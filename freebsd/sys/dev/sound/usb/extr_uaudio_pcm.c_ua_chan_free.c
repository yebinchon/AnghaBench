
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;


 int uaudio_chan_free (void*) ;

__attribute__((used)) static int
ua_chan_free(kobj_t obj, void *data)
{
 return (uaudio_chan_free(data));
}
