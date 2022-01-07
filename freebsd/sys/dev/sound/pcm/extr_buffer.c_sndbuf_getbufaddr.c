
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int buf_addr; } ;
typedef int bus_addr_t ;



bus_addr_t
sndbuf_getbufaddr(struct snd_dbuf *buf)
{
 return (buf->buf_addr);
}
