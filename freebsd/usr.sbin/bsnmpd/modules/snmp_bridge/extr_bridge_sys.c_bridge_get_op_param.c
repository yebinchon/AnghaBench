
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifdrv {int ifd_len; int ifd_cmd; struct ifbropreq* ifd_data; int ifd_name; } ;
struct TYPE_4__ {scalar_t__ tv_sec; int tv_usec; } ;
struct ifbropreq {int ifbop_maxage; int ifbop_hellotime; int ifbop_fwddelay; scalar_t__ ifbop_root_port; TYPE_2__ ifbop_last_tc_time; int ifbop_designated_root; int ifbop_root_path_cost; int ifbop_holdcount; int ifbop_protocol; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_usec; } ;
struct bridge_if {int max_age; int hello_time; int fwd_delay; scalar_t__ root_port; TYPE_1__ last_tc_time; int top_changes; int design_root; int root_cost; int tx_hold_count; int stp_version; int bif_name; } ;
typedef int b_req ;


 int BRDGPARAM ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCGDRVSPEC ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int snmp_uint64_to_bridgeid (int ,int ) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

int
bridge_get_op_param(struct bridge_if *bif)
{
 int new_root_send;
 struct ifdrv ifd;
 struct ifbropreq b_req;

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_req);
 ifd.ifd_data = &b_req;
 ifd.ifd_cmd = BRDGPARAM;

 if (ioctl(sock, SIOCGDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "update bridge: ioctl(BRDGPARAM) failed: %s",
      strerror(errno));
  return (-1);
 }

 bif->max_age = 100 * b_req.ifbop_maxage;
 bif->hello_time = 100 * b_req.ifbop_hellotime;
 bif->fwd_delay = 100 * b_req.ifbop_fwddelay;
 bif->stp_version = b_req.ifbop_protocol;
 bif->tx_hold_count = b_req.ifbop_holdcount;

 if (b_req.ifbop_root_port == 0 &&
     bif->root_port != b_req.ifbop_root_port)
  new_root_send = 2;
 else
  new_root_send = 0;

 bif->root_port = b_req.ifbop_root_port;
 bif->root_cost = b_req.ifbop_root_path_cost;
 snmp_uint64_to_bridgeid(b_req.ifbop_designated_root,
     bif->design_root);

 if (bif->last_tc_time.tv_sec != b_req.ifbop_last_tc_time.tv_sec) {
  bif->top_changes++;
  bif->last_tc_time.tv_sec = b_req.ifbop_last_tc_time.tv_sec;
  bif->last_tc_time.tv_usec = b_req.ifbop_last_tc_time.tv_usec;





  if (new_root_send == 0)
   return (1);
 }

 return (new_root_send);
}
