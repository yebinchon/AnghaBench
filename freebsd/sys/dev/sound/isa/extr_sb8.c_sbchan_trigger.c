
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_chinfo {int buffer; } ;
typedef int kobj_t ;


 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int sb_start (struct sb_chinfo*) ;
 int sb_stop (struct sb_chinfo*) ;
 int sndbuf_dma (int ,int) ;

__attribute__((used)) static int
sbchan_trigger(kobj_t obj, void *data, int go)
{
 struct sb_chinfo *ch = data;

 if (!PCMTRIG_COMMON(go))
  return 0;

 sndbuf_dma(ch->buffer, go);
 if (go == PCMTRIG_START)
  sb_start(ch);
 else
  sb_stop(ch);
 return 0;
}
