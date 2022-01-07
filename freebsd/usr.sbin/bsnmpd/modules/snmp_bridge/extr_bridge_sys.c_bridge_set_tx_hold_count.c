
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; int ifd_cmd; struct ifbrparam* ifd_data; int ifd_name; } ;
struct ifbrparam {scalar_t__ ifbrp_txhc; } ;
struct bridge_if {scalar_t__ tx_hold_count; int bif_name; } ;
typedef scalar_t__ int32_t ;
typedef int b_param ;


 int BRDGSTXHC ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCSDRVSPEC ;
 scalar_t__ SNMP_BRIDGE_MAX_TXHC ;
 scalar_t__ SNMP_BRIDGE_MIN_TXHC ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

int
bridge_set_tx_hold_count(struct bridge_if *bif, int32_t tx_hc)
{
 struct ifdrv ifd;
 struct ifbrparam b_param;

 if (tx_hc < SNMP_BRIDGE_MIN_TXHC || tx_hc > SNMP_BRIDGE_MAX_TXHC)
  return (-1);

 strlcpy(ifd.ifd_name, bif->bif_name, IFNAMSIZ);
 ifd.ifd_len = sizeof(b_param);
 ifd.ifd_data = &b_param;
 b_param.ifbrp_txhc = tx_hc;
 ifd.ifd_cmd = BRDGSTXHC;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set bridge param: ioctl(BRDGSTXHC) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 bif->tx_hold_count = b_param.ifbrp_txhc;
 return (0);
}
