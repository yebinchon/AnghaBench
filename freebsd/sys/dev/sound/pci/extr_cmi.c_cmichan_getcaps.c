
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_caps cmi_caps ;

__attribute__((used)) static struct pcmchan_caps *
cmichan_getcaps(kobj_t obj, void *data)
{
 return &cmi_caps;
}
