
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_chinfo {int run; int buffer; } ;
typedef int kobj_t ;



 int PCMTRIG_COMMON (int) ;


 int ess_start (struct ess_chinfo*) ;
 int ess_stop (struct ess_chinfo*) ;
 int sndbuf_dma (int ,int) ;

__attribute__((used)) static int
esschan_trigger(kobj_t obj, void *data, int go)
{
 struct ess_chinfo *ch = data;

 if (!PCMTRIG_COMMON(go))
  return 0;

 switch (go) {
 case 129:
  ch->run = 1;
  sndbuf_dma(ch->buffer, go);
  ess_start(ch);
  break;

 case 128:
 case 130:
 default:
  ess_stop(ch);
  break;
 }
 return 0;
}
