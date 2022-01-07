
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_cm_sidr_req_event_param {int bth_pkey; int pkey; int service_id; int port; TYPE_4__* listen_id; } ;
struct ib_cm_req_event_param {int bth_pkey; TYPE_3__* primary_path; int port; TYPE_2__* listen_id; } ;
struct TYPE_5__ {struct ib_cm_sidr_req_event_param sidr_req_rcvd; struct ib_cm_req_event_param req_rcvd; } ;
struct ib_cm_event {int event; TYPE_1__ param; } ;
struct cma_req_info {int has_gid; int pkey; int service_id; int port; int device; int local_gid; } ;
struct TYPE_8__ {int device; } ;
struct TYPE_7__ {int pkey; int service_id; int sgid; } ;
struct TYPE_6__ {int device; } ;


 int EINVAL ;


 int be16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int pr_warn_ratelimited (char*,int ,int ) ;

__attribute__((used)) static int cma_save_req_info(const struct ib_cm_event *ib_event,
        struct cma_req_info *req)
{
 const struct ib_cm_req_event_param *req_param =
  &ib_event->param.req_rcvd;
 const struct ib_cm_sidr_req_event_param *sidr_param =
  &ib_event->param.sidr_req_rcvd;

 switch (ib_event->event) {
 case 129:
  req->device = req_param->listen_id->device;
  req->port = req_param->port;
  memcpy(&req->local_gid, &req_param->primary_path->sgid,
         sizeof(req->local_gid));
  req->has_gid = 1;
  req->service_id = req_param->primary_path->service_id;
  req->pkey = be16_to_cpu(req_param->primary_path->pkey);
  if (req->pkey != req_param->bth_pkey)
   pr_warn_ratelimited("RDMA CMA: got different BTH P_Key (0x%x) and primary path P_Key (0x%x)\n"
         "RDMA CMA: in the future this may cause the request to be dropped\n",
         req_param->bth_pkey, req->pkey);
  break;
 case 128:
  req->device = sidr_param->listen_id->device;
  req->port = sidr_param->port;
  req->has_gid = 0;
  req->service_id = sidr_param->service_id;
  req->pkey = sidr_param->pkey;
  if (req->pkey != sidr_param->bth_pkey)
   pr_warn_ratelimited("RDMA CMA: got different BTH P_Key (0x%x) and SIDR request payload P_Key (0x%x)\n"
         "RDMA CMA: in the future this may cause the request to be dropped\n",
         sidr_param->bth_pkey, req->pkey);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
