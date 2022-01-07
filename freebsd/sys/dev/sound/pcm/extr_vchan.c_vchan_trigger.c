
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchan_info {int trigger; struct pcm_channel* channel; } ;
struct pcm_channel {struct pcm_channel* parentchannel; } ;
typedef int kobj_t ;
struct TYPE_2__ {int busy; } ;


 int CHN_INSERT_HEAD (struct pcm_channel*,struct pcm_channel*,int ) ;
 int CHN_LOCK (struct pcm_channel*) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int CHN_N_TRIGGER ;
 int CHN_REMOVE (struct pcm_channel*,struct pcm_channel*,int ) ;
 int CHN_UNLOCK (struct pcm_channel*) ;

 int PCMTRIG_COMMON (int) ;


 scalar_t__ VCHAN_SYNC_REQUIRED (struct pcm_channel*) ;
 TYPE_1__ children ;
 int chn_notify (struct pcm_channel*,int ) ;
 int vchan_sync (struct pcm_channel*) ;

__attribute__((used)) static int
vchan_trigger(kobj_t obj, void *data, int go)
{
 struct vchan_info *info;
 struct pcm_channel *c, *p;
 int ret, otrigger;

 info = data;

 if (!PCMTRIG_COMMON(go) || go == info->trigger)
  return (0);

 c = info->channel;
 p = c->parentchannel;
 otrigger = info->trigger;
 info->trigger = go;

 CHN_LOCKASSERT(c);

 CHN_UNLOCK(c);
 CHN_LOCK(p);

 switch (go) {
 case 129:
  if (otrigger != 129)
   CHN_INSERT_HEAD(p, c, children.busy);
  break;
 case 128:
 case 130:
  if (otrigger == 129)
   CHN_REMOVE(p, c, children.busy);
  break;
 default:
  break;
 }

 ret = chn_notify(p, CHN_N_TRIGGER);

 CHN_LOCK(c);

 if (ret == 0 && go == 129 && VCHAN_SYNC_REQUIRED(c))
  ret = vchan_sync(c);

 CHN_UNLOCK(c);
 CHN_UNLOCK(p);
 CHN_LOCK(c);

 return (ret);
}
