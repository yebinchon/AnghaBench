
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_dbuf {int fmt; int bps; int align; } ;


 int AFMT_16BIT ;
 int AFMT_24BIT ;
 int AFMT_32BIT ;
 int AFMT_ALIGN (int) ;
 int AFMT_BPS (int) ;
 int AFMT_CHANNEL (int) ;

int
sndbuf_setfmt(struct snd_dbuf *b, u_int32_t fmt)
{
 b->fmt = fmt;
 b->bps = AFMT_BPS(b->fmt);
 b->align = AFMT_ALIGN(b->fmt);
 return 0;
}
