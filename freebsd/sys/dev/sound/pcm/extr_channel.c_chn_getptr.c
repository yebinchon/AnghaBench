
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int bufhard; int devinfo; int methods; } ;


 int CHANNEL_GETPTR (int ,int ) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 scalar_t__ CHN_STARTED (struct pcm_channel*) ;
 int sndbuf_getalign (int ) ;

int
chn_getptr(struct pcm_channel *c)
{
 int hwptr;

 CHN_LOCKASSERT(c);
 hwptr = (CHN_STARTED(c)) ? CHANNEL_GETPTR(c->methods, c->devinfo) : 0;
 return (hwptr - (hwptr % sndbuf_getalign(c->bufhard)));
}
