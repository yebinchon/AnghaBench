
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mcast_req {size_t func; int func_list; int group_list; int sa_mad; scalar_t__ clean; } ;
struct mcast_group {TYPE_1__* func; } ;
struct TYPE_2__ {int num_pend_reqs; int join_state; } ;


 int check_leave (struct mcast_group*,size_t,int ) ;
 int kfree (struct mcast_req*) ;
 int leave_group (struct mcast_group*,size_t,int ) ;
 int list_del (int *) ;
 int send_reply_to_slave (size_t,struct mcast_group*,int *,int ) ;

__attribute__((used)) static int handle_leave_req(struct mcast_group *group, u8 leave_mask,
       struct mcast_req *req)
{
 u16 status;

 if (req->clean)
  leave_mask = group->func[req->func].join_state;

 status = check_leave(group, req->func, leave_mask);
 if (!status)
  leave_group(group, req->func, leave_mask);

 if (!req->clean)
  send_reply_to_slave(req->func, group, &req->sa_mad, status);
 --group->func[req->func].num_pend_reqs;
 list_del(&req->group_list);
 list_del(&req->func_list);
 kfree(req);
 return 1;
}
