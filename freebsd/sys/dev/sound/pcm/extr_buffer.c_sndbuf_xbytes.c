
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;


 unsigned int snd_xbytes (unsigned int,int,int) ;
 int sndbuf_getalign (struct snd_dbuf*) ;
 int sndbuf_getspd (struct snd_dbuf*) ;

unsigned int
sndbuf_xbytes(unsigned int v, struct snd_dbuf *from, struct snd_dbuf *to)
{
 if (from == ((void*)0) || to == ((void*)0) || v == 0)
  return 0;

 return snd_xbytes(v, sndbuf_getalign(from) * sndbuf_getspd(from),
     sndbuf_getalign(to) * sndbuf_getspd(to));
}
