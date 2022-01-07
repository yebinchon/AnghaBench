
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcast_port {int port_num; TYPE_2__* dev; } ;
struct TYPE_3__ {int comp_mask; int rec; } ;
struct mcast_member {TYPE_1__ multicast; } ;
struct mcast_group {int query; struct mcast_member* last_join; struct mcast_port* port; } ;
struct TYPE_4__ {int device; } ;


 int GFP_KERNEL ;
 int IB_MGMT_METHOD_SET ;
 int ib_sa_mcmember_rec_query (int *,int ,int ,int ,int *,int ,int,int ,int ,struct mcast_group*,int *) ;
 int join_handler ;
 int sa_client ;

__attribute__((used)) static int send_join(struct mcast_group *group, struct mcast_member *member)
{
 struct mcast_port *port = group->port;
 int ret;

 group->last_join = member;
 ret = ib_sa_mcmember_rec_query(&sa_client, port->dev->device,
           port->port_num, IB_MGMT_METHOD_SET,
           &member->multicast.rec,
           member->multicast.comp_mask,
           3000, GFP_KERNEL, join_handler, group,
           &group->query);
 return (ret > 0) ? 0 : ret;
}
