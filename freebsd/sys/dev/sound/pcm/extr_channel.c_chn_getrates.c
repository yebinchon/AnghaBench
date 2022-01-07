
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int devinfo; int methods; } ;


 int CHANNEL_GETRATES (int ,int ,int**) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int KASSERT (int ,char*) ;

int
chn_getrates(struct pcm_channel *c, int **rates)
{
 KASSERT(rates != ((void*)0), ("rates is null"));
 CHN_LOCKASSERT(c);
 return CHANNEL_GETRATES(c->methods, c->devinfo, rates);
}
