
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pchinfo {struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef int kobj_t ;


 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int PCMTRIG_COMMON (int) ;
 int m3_pchan_trigger_locked (int ,void*,int) ;

__attribute__((used)) static int
m3_pchan_trigger(kobj_t kobj, void *chdata, int go)
{
 struct sc_pchinfo *ch = chdata;
 struct sc_info *sc = ch->parent;
 int ret;

 if (!PCMTRIG_COMMON(go))
  return (0);

 M3_LOCK(sc);
 ret = m3_pchan_trigger_locked(kobj, chdata, go);
 M3_UNLOCK(sc);

 return (ret);
}
