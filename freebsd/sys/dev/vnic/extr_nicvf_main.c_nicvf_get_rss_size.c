
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ rss_size; } ;
struct nicvf {int vf_id; } ;


 int NIC_MBOX_MSG_RSS_SIZE ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void
nicvf_get_rss_size(struct nicvf *nic)
{
 union nic_mbx mbx = {};

 mbx.rss_size.msg = NIC_MBOX_MSG_RSS_SIZE;
 mbx.rss_size.vf_id = nic->vf_id;
 nicvf_send_msg_to_pf(nic, &mbx);
}
