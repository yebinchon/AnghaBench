
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ua_chan_class ;
 int ua_mixer_class ;
 int uaudio_attach_sub (int ,int *,int *) ;

__attribute__((used)) static int
ua_attach(device_t dev)
{
 return (uaudio_attach_sub(dev, &ua_mixer_class, &ua_chan_class));
}
