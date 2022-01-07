
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlanstatfoo_p {int ncur; int cur; } ;
struct bsdstat {int dummy; } ;


 int wlan_collect (struct wlanstatfoo_p*,int *,int *) ;

__attribute__((used)) static void
wlan_collect_cur(struct bsdstat *sf)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) sf;

 wlan_collect(wf, &wf->cur, &wf->ncur);
}
