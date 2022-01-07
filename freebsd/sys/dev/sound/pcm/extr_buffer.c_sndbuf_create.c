
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {struct pcm_channel* channel; int dev; int name; } ;
struct pcm_channel {int dummy; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SNDBUF_NAMELEN ;
 struct snd_dbuf* malloc (int,int ,int) ;
 int snprintf (int ,int ,char*,char*,char*) ;

struct snd_dbuf *
sndbuf_create(device_t dev, char *drv, char *desc, struct pcm_channel *channel)
{
 struct snd_dbuf *b;

 b = malloc(sizeof(*b), M_DEVBUF, M_WAITOK | M_ZERO);
 snprintf(b->name, SNDBUF_NAMELEN, "%s:%s", drv, desc);
 b->dev = dev;
 b->channel = channel;

 return b;
}
