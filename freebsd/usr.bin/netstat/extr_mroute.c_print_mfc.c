
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vifi_t ;
typedef int u_long ;
struct sockaddr_in {int sin_len; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct mfc {scalar_t__* mfc_ttls; struct bw_meter* mfc_bw_meter; int mfc_parent; int mfc_pkt_cnt; int mfc_mcastgrp; int mfc_origin; } ;
struct bw_meter {struct bw_meter* bm_mfc_next; } ;
typedef int sin ;
typedef int bw_meter ;


 int AF_INET ;
 int kread (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int numeric_addr ;
 int print_bw_meter (struct bw_meter*,int*) ;
 int routename (struct sockaddr*,int ) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;

__attribute__((used)) static void
print_mfc(struct mfc *m, int maxvif, int *banner_printed)
{
 struct sockaddr_in sin;
 struct sockaddr *sa = (struct sockaddr *)&sin;
 struct bw_meter bw_meter, *bwm;
 int bw_banner_printed;
 int error;
 vifi_t vifi;

 bw_banner_printed = 0;
 memset(&sin, 0, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;

 if (! *banner_printed) {
  xo_open_list("multicast-forwarding-entry");
  xo_emit("\n{T:IPv4 Multicast Forwarding Table}\n"
      " {T:Origin}          {T:Group}            "
      " {T:Packets In-Vif}  {T:Out-Vifs:Ttls}\n");
  *banner_printed = 1;
 }

 memcpy(&sin.sin_addr, &m->mfc_origin, sizeof(sin.sin_addr));
 xo_emit(" {:origin-address/%-15.15s}", routename(sa, numeric_addr));
 memcpy(&sin.sin_addr, &m->mfc_mcastgrp, sizeof(sin.sin_addr));
 xo_emit(" {:group-address/%-15.15s}",
     routename(sa, numeric_addr));
 xo_emit(" {:sent-packets/%9lu}", m->mfc_pkt_cnt);
 xo_emit("  {:parent/%3d}   ", m->mfc_parent);
 xo_open_list("vif-ttl");
 for (vifi = 0; vifi <= maxvif; vifi++) {
  if (m->mfc_ttls[vifi] > 0) {
   xo_open_instance("vif-ttl");
   xo_emit(" {k:vif/%u}:{:ttl/%u}", vifi,
       m->mfc_ttls[vifi]);
   xo_close_instance("vif-ttl");
  }
 }
 xo_close_list("vif-ttl");
 xo_emit("\n");





 bwm = m->mfc_bw_meter;
 while (bwm != ((void*)0)) {
  error = kread((u_long)bwm, (char *)&bw_meter,
      sizeof(bw_meter));
  if (error)
   break;
  print_bw_meter(&bw_meter, &bw_banner_printed);
  bwm = bw_meter.bm_mfc_next;
 }
 if (banner_printed)
  xo_close_list("bandwidth-meter");
}
