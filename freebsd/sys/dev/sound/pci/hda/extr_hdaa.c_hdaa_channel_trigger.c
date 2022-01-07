
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_chan {int devinfo; } ;
typedef int kobj_t ;



 int PCMTRIG_COMMON (int) ;


 int hdaa_channel_start (struct hdaa_chan*) ;
 int hdaa_channel_stop (struct hdaa_chan*) ;
 int hdaa_lock (int ) ;
 int hdaa_unlock (int ) ;

__attribute__((used)) static int
hdaa_channel_trigger(kobj_t obj, void *data, int go)
{
 struct hdaa_chan *ch = data;
 int error = 0;

 if (!PCMTRIG_COMMON(go))
  return (0);

 hdaa_lock(ch->devinfo);
 switch (go) {
 case 129:
  error = hdaa_channel_start(ch);
  break;
 case 128:
 case 130:
  hdaa_channel_stop(ch);
  break;
 default:
  break;
 }
 hdaa_unlock(ch->devinfo);

 return (error);
}
