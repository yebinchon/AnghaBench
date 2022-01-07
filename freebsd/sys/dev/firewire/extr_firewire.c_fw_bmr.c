
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ contender; scalar_t__ link_active; } ;
union fw_self_id {TYPE_1__ p0; } ;
typedef int uint32_t ;
struct fw_device {int dst; int maxrec; int status; scalar_t__ speed; struct firewire_comm* fc; } ;
struct firewire_comm {int max_node; int nodeid; size_t max_hop; int bdev; } ;
typedef int fwdev ;


 int BUS_MGR_ID ;
 int CSRARC (struct firewire_comm*,int ) ;
 int FWDEVINIT ;
 size_t MAX_GAPHOP ;
 int STATE_SET ;
 int bzero (struct fw_device*,int) ;
 int device_printf (int ,char*,...) ;
 int fw_asy_callback_free ;
 union fw_self_id* fw_find_self_id (struct firewire_comm*,int) ;
 int fw_phy_config (struct firewire_comm*,int,int ) ;
 int fwmem_write_quad (struct fw_device*,int *,int ,int,int,int *,int ) ;
 int * gap_cnt ;
 int htonl (int) ;

__attribute__((used)) static int
fw_bmr(struct firewire_comm *fc)
{
 struct fw_device fwdev;
 union fw_self_id *self_id;
 int cmstr;
 uint32_t quad;


 self_id = fw_find_self_id(fc, fc->max_node);
 if (fc->max_node > 0) {

  if (self_id->p0.link_active && self_id->p0.contender)
   cmstr = fc->max_node;
  else {
   device_printf(fc->bdev,
       "root node is not cycle master capable\n");

   cmstr = fc->nodeid;

  }
 } else
  cmstr = -1;

 device_printf(fc->bdev, "bus manager %d %s\n",
  CSRARC(fc, BUS_MGR_ID),
  (CSRARC(fc, BUS_MGR_ID) != fc->nodeid) ? "(me)" : "");
 if (CSRARC(fc, BUS_MGR_ID) != fc->nodeid) {

  return (0);
 }


 if (fc->max_hop <= MAX_GAPHOP)
  fw_phy_config(fc, cmstr, gap_cnt[fc->max_hop]);

 if (cmstr == fc->nodeid || cmstr == -1)
  return 0;

 bzero(&fwdev, sizeof(fwdev));
 fwdev.fc = fc;
 fwdev.dst = cmstr;
 fwdev.speed = 0;
 fwdev.maxrec = 8;
 fwdev.status = FWDEVINIT;

 quad = htonl(1 << 8);
 fwmem_write_quad(&fwdev, ((void*)0), 0 ,
     0xffff, 0xf0000000 | STATE_SET, &quad, fw_asy_callback_free);

 return 0;
}
