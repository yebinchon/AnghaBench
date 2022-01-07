
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_dbuf {int fmt; } ;



u_int32_t
sndbuf_getfmt(struct snd_dbuf *b)
{
 return b->fmt;
}
