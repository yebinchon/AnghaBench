
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdrv {int ifd_len; scalar_t__ ifd_cmd; int ifbr_ifsname; struct ifdrv* ifd_data; int ifd_name; } ;
struct ifbreq {int ifd_len; scalar_t__ ifd_cmd; int ifbr_ifsname; struct ifbreq* ifd_data; int ifd_name; } ;
struct bridge_port {char const* p_name; scalar_t__ span_enable; } ;
typedef int ifd ;
typedef int b_req ;


 scalar_t__ BRDGDEL ;
 scalar_t__ BRDGDELS ;
 int LOG_ERR ;
 int SIOCSDRVSPEC ;
 scalar_t__ begemotBridgeBaseSpanEnabled_enabled ;
 int bzero (struct ifdrv*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifdrv*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,char const*,char*,int ) ;

int
bridge_port_delm(struct bridge_port *bp, const char *b_name)
{
 struct ifdrv ifd;
 struct ifbreq b_req;

 bzero(&ifd, sizeof(ifd));
 bzero(&b_req, sizeof(b_req));

 strlcpy(ifd.ifd_name, b_name, sizeof(ifd.ifd_name));
 ifd.ifd_len = sizeof(b_req);
 ifd.ifd_data = &b_req;
 strlcpy(b_req.ifbr_ifsname, bp->p_name, sizeof(b_req.ifbr_ifsname));

 if (bp->span_enable == begemotBridgeBaseSpanEnabled_enabled)
  ifd.ifd_cmd = BRDGDELS;
 else
  ifd.ifd_cmd = BRDGDEL;

 if (ioctl(sock, SIOCSDRVSPEC, &ifd) < 0) {
  syslog(LOG_ERR, "%s - add member : ioctl(%s) failed: %s",
      bp->p_name,
      (ifd.ifd_cmd == BRDGDELS ? "BRDGDELS" : "BRDGDEL"),
      strerror(errno));
  return (-1);
 }

 return (0);
}
