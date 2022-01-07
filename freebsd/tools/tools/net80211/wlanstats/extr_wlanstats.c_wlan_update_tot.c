
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlanstatfoo_p {int ncur; int ntotal; int cur; int total; } ;
struct bsdstat {int dummy; } ;



__attribute__((used)) static void
wlan_update_tot(struct bsdstat *sf)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) sf;

 wf->total = wf->cur;
 wf->ntotal = wf->ncur;
}
