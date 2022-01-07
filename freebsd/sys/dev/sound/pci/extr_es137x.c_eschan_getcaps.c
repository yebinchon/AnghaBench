
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct es_chinfo {struct pcmchan_caps caps; } ;
typedef int kobj_t ;



__attribute__((used)) static struct pcmchan_caps *
eschan_getcaps(kobj_t obj, void *data)
{
 struct es_chinfo *ch = data;

 return (&ch->caps);
}
