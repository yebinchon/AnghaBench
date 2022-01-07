
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {void* payload; } ;
struct nvme_request {int payload_size; TYPE_1__ u; int type; } ;
typedef int nvme_cb_fn_t ;


 int NVME_REQUEST_VADDR ;
 struct nvme_request* _nvme_allocate_request (int ,void*) ;

__attribute__((used)) static __inline struct nvme_request *
nvme_allocate_request_vaddr(void *payload, uint32_t payload_size,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = _nvme_allocate_request(cb_fn, cb_arg);
 if (req != ((void*)0)) {
  req->type = NVME_REQUEST_VADDR;
  req->u.payload = payload;
  req->payload_size = payload_size;
 }
 return (req);
}
