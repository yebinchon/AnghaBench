
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmchan_caps {int dummy; } ;
struct mss_chinfo {TYPE_1__* parent; } ;
typedef int kobj_t ;
struct TYPE_2__ {int bd_id; } ;





 struct pcmchan_caps guspnp_caps ;
 struct pcmchan_caps mss_caps ;
 struct pcmchan_caps opti931_caps ;

__attribute__((used)) static struct pcmchan_caps *
msschan_getcaps(kobj_t obj, void *data)
{
 struct mss_chinfo *ch = data;

 switch(ch->parent->bd_id) {
 case 128:
  return &opti931_caps;
  break;

 case 129:
 case 130:
  return &guspnp_caps;
  break;

 default:
  return &mss_caps;
  break;
 }
}
