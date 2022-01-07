
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_l2cap_raw_auto_discon_timo {scalar_t__ timeout; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_L2CAP_NODE_GET_AUTO_DISCON_TIMO ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_l2cap_raw_auto_discon_timo*,int) ;
 int memset (struct ng_btsocket_l2cap_raw_auto_discon_timo*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
l2cap_read_auto_disconnect_timeout(int s, int argc, char **argv)
{
 struct ng_btsocket_l2cap_raw_auto_discon_timo r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_L2CAP_NODE_GET_AUTO_DISCON_TIMO, &r, sizeof(r)) < 0)
  return (ERROR);

 if (r.timeout != 0)
  fprintf(stdout, "Auto disconnect timeout: %d sec\n", r.timeout);
 else
  fprintf(stdout, "Auto disconnect disabled\n");

 return (OK);
}
