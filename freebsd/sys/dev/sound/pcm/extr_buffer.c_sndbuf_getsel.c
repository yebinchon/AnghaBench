
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int dummy; } ;
struct snd_dbuf {struct selinfo sel; } ;



struct selinfo *
sndbuf_getsel(struct snd_dbuf *b)
{
 return &b->sel;
}
