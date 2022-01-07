
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct mlx4_ib_demux_ctx* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct mlx4_ib_demux_ctx {int mcg_table_lock; scalar_t__ flushing; } ;
struct TYPE_6__ {int method; } ;
struct ib_sa_mad {TYPE_3__ mad_hdr; scalar_t__ data; } ;
struct mcast_req {int func; struct mcast_group* group; struct ib_sa_mad sa_mad; } ;
struct mcast_group {int lock; TYPE_2__* func; } ;
struct ib_sa_mcmember_data {int mgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {int num_pend_reqs; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;






 int IS_ERR (struct mcast_group*) ;
 int MAX_PEND_REQS_PER_FUNC ;
 int PTR_ERR (struct mcast_group*) ;
 struct mcast_group* acquire_group (struct mlx4_ib_demux_ctx*,int *,int,int ) ;
 int kfree (struct mcast_req*) ;
 struct mcast_req* kzalloc (int,int ) ;
 int mcg_debug_group (struct mcast_group*,char*,int,int,int ) ;
 int mcg_warn (char*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_req (struct mcast_req*) ;
 int release_group (struct mcast_group*,int ) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

int mlx4_ib_mcg_multiplex_handler(struct ib_device *ibdev, int port,
      int slave, struct ib_sa_mad *sa_mad)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct ib_sa_mcmember_data *rec = (struct ib_sa_mcmember_data *)sa_mad->data;
 struct mlx4_ib_demux_ctx *ctx = &dev->sriov.demux[port - 1];
 struct mcast_group *group;
 struct mcast_req *req;
 int may_create = 0;

 if (ctx->flushing)
  return -EAGAIN;

 switch (sa_mad->mad_hdr.method) {
 case 132:
  may_create = 1;
 case 131:
  req = kzalloc(sizeof *req, GFP_KERNEL);
  if (!req)
   return -ENOMEM;

  req->func = slave;
  req->sa_mad = *sa_mad;

  mutex_lock(&ctx->mcg_table_lock);
  group = acquire_group(ctx, &rec->mgid, may_create, GFP_KERNEL);
  mutex_unlock(&ctx->mcg_table_lock);
  if (IS_ERR(group)) {
   kfree(req);
   return PTR_ERR(group);
  }
  mutex_lock(&group->lock);
  if (group->func[slave].num_pend_reqs > MAX_PEND_REQS_PER_FUNC) {
   mutex_unlock(&group->lock);
   mcg_debug_group(group, "Port %d, Func %d has too many pending requests (%d), dropping\n",
     port, slave, MAX_PEND_REQS_PER_FUNC);
   release_group(group, 0);
   kfree(req);
   return -ENOMEM;
  }
  ++group->func[slave].num_pend_reqs;
  req->group = group;
  queue_req(req);
  mutex_unlock(&group->lock);
  release_group(group, 0);
  return 1;
 case 129:
 case 133:
 case 128:
 case 130:
  return 0;
 default:
  mcg_warn("In multiplex, port %d, func %d: unexpected MCMember method: 0x%x, dropping\n",
   port, slave, sa_mad->mad_hdr.method);
  return 1;
 }
}
