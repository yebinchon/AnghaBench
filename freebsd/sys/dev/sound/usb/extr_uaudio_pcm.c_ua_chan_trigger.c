
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;


 scalar_t__ PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int uaudio_chan_start (void*) ;
 int uaudio_chan_stop (void*) ;

__attribute__((used)) static int
ua_chan_trigger(kobj_t obj, void *data, int go)
{
 if (PCMTRIG_COMMON(go)) {
  if (go == PCMTRIG_START) {
   uaudio_chan_start(data);
  } else {
   uaudio_chan_stop(data);
  }
 }
 return (0);
}
