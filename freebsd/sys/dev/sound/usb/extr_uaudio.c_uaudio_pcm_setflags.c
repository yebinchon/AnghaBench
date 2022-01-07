
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;

__attribute__((used)) static void
uaudio_pcm_setflags(device_t dev, uint32_t flags)
{
 pcm_setflags(dev, pcm_getflags(dev) | flags);
}
