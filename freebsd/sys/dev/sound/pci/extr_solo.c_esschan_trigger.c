
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;
struct ess_chinfo {int hwch; int dir; int buffer; struct ess_info* parent; } ;
typedef int kobj_t ;


 int DEB (int ) ;

 int PCMTRIG_COMMON (int) ;


 int ess_dmasetup (struct ess_info*,int ,int ,int ,int ) ;
 int ess_dmatrigger (struct ess_info*,int ,int) ;
 int ess_lock (struct ess_info*) ;
 int ess_start (struct ess_chinfo*) ;
 int ess_stop (struct ess_chinfo*) ;
 int ess_unlock (struct ess_info*) ;
 int printf (char*,int) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static int
esschan_trigger(kobj_t obj, void *data, int go)
{
 struct ess_chinfo *ch = data;
 struct ess_info *sc = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return 0;

 DEB(printf("esschan_trigger: %d\n",go));

 ess_lock(sc);
 switch (go) {
 case 129:
  ess_dmasetup(sc, ch->hwch, sndbuf_getbufaddr(ch->buffer), sndbuf_getsize(ch->buffer), ch->dir);
  ess_dmatrigger(sc, ch->hwch, 1);
  ess_start(ch);
  break;

 case 128:
 case 130:
 default:
  ess_stop(ch);
  break;
 }
 ess_unlock(sc);
 return 0;
}
