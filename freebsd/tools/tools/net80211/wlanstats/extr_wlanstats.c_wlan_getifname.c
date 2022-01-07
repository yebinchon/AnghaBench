
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ifr_name; } ;
struct wlanstatfoo_p {TYPE_1__ ifr; } ;
struct wlanstatfoo {int dummy; } ;



__attribute__((used)) static const char *
wlan_getifname(struct wlanstatfoo *wf0)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) wf0;

 return wf->ifr.ifr_name;
}
