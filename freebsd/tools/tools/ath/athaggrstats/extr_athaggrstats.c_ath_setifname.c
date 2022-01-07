
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifr_name; } ;
struct athaggrstatfoo_p {TYPE_1__ ifr; } ;
struct athaggrstatfoo {int dummy; } ;


 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
ath_setifname(struct athaggrstatfoo *wf0, const char *ifname)
{
 struct athaggrstatfoo_p *wf = (struct athaggrstatfoo_p *) wf0;

 strncpy(wf->ifr.ifr_name, ifname, sizeof (wf->ifr.ifr_name));
}
