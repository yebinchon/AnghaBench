
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_scan_result {int dummy; } ;


 int free (struct wlan_scan_result*) ;

void
wlan_scan_free_result(struct wlan_scan_result *sr)
{
 free(sr);
}
