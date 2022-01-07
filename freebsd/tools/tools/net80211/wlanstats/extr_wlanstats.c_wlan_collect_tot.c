
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlanstatfoo_p {int ntotal; int total; } ;
struct bsdstat {int dummy; } ;


 int wlan_collect (struct wlanstatfoo_p*,int *,int *) ;

__attribute__((used)) static void
wlan_collect_tot(struct bsdstat *sf)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) sf;

 wlan_collect(wf, &wf->total, &wf->ntotal);
}
