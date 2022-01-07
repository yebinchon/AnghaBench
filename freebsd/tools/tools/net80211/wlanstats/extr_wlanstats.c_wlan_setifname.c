
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i_name; } ;
struct TYPE_3__ {int ifr_name; } ;
struct wlanstatfoo_p {TYPE_2__ ireq; TYPE_1__ ifr; } ;
struct wlanstatfoo {int dummy; } ;


 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
wlan_setifname(struct wlanstatfoo *wf0, const char *ifname)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) wf0;

 strncpy(wf->ifr.ifr_name, ifname, sizeof (wf->ifr.ifr_name));
 strncpy(wf->ireq.i_name, ifname, sizeof (wf->ireq.i_name));
}
