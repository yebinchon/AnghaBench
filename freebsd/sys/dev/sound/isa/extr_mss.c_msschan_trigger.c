
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int dummy; } ;
struct mss_chinfo {int buffer; struct mss_info* parent; } ;
typedef int kobj_t ;


 int PCMTRIG_COMMON (int) ;
 int mss_lock (struct mss_info*) ;
 int mss_trigger (struct mss_chinfo*,int) ;
 int mss_unlock (struct mss_info*) ;
 int sndbuf_dma (int ,int) ;

__attribute__((used)) static int
msschan_trigger(kobj_t obj, void *data, int go)
{
 struct mss_chinfo *ch = data;
 struct mss_info *mss = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return 0;

 sndbuf_dma(ch->buffer, go);
 mss_lock(mss);
 mss_trigger(ch, go);
 mss_unlock(mss);
 return 0;
}
