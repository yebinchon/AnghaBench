
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_context {int cm_id; } ;
struct rdma_cm_event {int event; } ;
struct ib_sa_path_rec {int event; } ;
struct ib_path_rec_data {int flags; int path_rec; } ;
typedef int sa_path ;


 int EINVAL ;
 int IB_PATH_BIDIRECTIONAL ;
 int IB_PATH_GMP ;
 int IB_PATH_PRIMARY ;
 int RDMA_CM_EVENT_ROUTE_RESOLVED ;
 int ib_sa_unpack_path (int ,struct rdma_cm_event*) ;
 int memset (struct rdma_cm_event*,int ,int) ;
 int rdma_set_ib_paths (int ,struct rdma_cm_event*,int) ;
 int ucma_event_handler (int ,struct rdma_cm_event*) ;

__attribute__((used)) static int ucma_set_ib_path(struct ucma_context *ctx,
       struct ib_path_rec_data *path_data, size_t optlen)
{
 struct ib_sa_path_rec sa_path;
 struct rdma_cm_event event;
 int ret;

 if (optlen % sizeof(*path_data))
  return -EINVAL;

 for (; optlen; optlen -= sizeof(*path_data), path_data++) {
  if (path_data->flags == (IB_PATH_GMP | IB_PATH_PRIMARY |
      IB_PATH_BIDIRECTIONAL))
   break;
 }

 if (!optlen)
  return -EINVAL;

 memset(&sa_path, 0, sizeof(sa_path));

 ib_sa_unpack_path(path_data->path_rec, &sa_path);
 ret = rdma_set_ib_paths(ctx->cm_id, &sa_path, 1);
 if (ret)
  return ret;

 memset(&event, 0, sizeof event);
 event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
 return ucma_event_handler(ctx->cm_id, &event);
}
