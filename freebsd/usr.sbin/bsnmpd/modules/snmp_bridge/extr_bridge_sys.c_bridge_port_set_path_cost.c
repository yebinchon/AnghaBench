
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; int ifd_cmd; struct ifbreq* ifd_data; int ifd_name; } ;
struct ifbreq {scalar_t__ ifbr_path_cost; int ifbr_ifsname; } ;
struct bridge_port {char const* p_name; scalar_t__ admin_path_cost; } ;
typedef scalar_t__ int32_t ;
typedef int b_req ;


 int BRDGSIFCOST ;
 int LOG_ERR ;
 int SIOCSDRVSPEC ;
 scalar_t__ SNMP_PORT_MIN_PATHCOST ;
 scalar_t__ SNMP_PORT_PATHCOST_OBSOLETE ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,char const*,int ) ;

int
bridge_port_set_path_cost(const char *bif_name, struct bridge_port *bp,
 int32_t path_cost)
{
 struct ifdrv ifd;
 struct ifbreq b_req;

 if (path_cost < SNMP_PORT_MIN_PATHCOST ||
     path_cost > SNMP_PORT_PATHCOST_OBSOLETE)
  return (-2);

 strlcpy(ifd.ifd_name, bif_name, sizeof(ifd.ifd_name));
 ifd.ifd_len = sizeof(b_req);
 ifd.ifd_data = &b_req;
 strlcpy(b_req.ifbr_ifsname, bp->p_name, sizeof(b_req.ifbr_ifsname));

 b_req.ifbr_path_cost = path_cost;
 ifd.ifd_cmd = BRDGSIFCOST;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "set member %s param: ioctl(BRDGSIFCOST) "
      "failed: %s", bp->p_name, strerror(errno));
  return (-1);
 }

 bp->admin_path_cost = path_cost;

 return (0);
}
