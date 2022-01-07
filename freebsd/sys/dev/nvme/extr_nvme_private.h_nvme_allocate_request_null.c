
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int type; } ;
typedef int nvme_cb_fn_t ;


 int NVME_REQUEST_NULL ;
 struct nvme_request* _nvme_allocate_request (int ,void*) ;

__attribute__((used)) static __inline struct nvme_request *
nvme_allocate_request_null(nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = _nvme_allocate_request(cb_fn, cb_arg);
 if (req != ((void*)0))
  req->type = NVME_REQUEST_NULL;
 return (req);
}
