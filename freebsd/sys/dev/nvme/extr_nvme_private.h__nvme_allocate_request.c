
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int timeout; void* cb_arg; int cb_fn; } ;
typedef int nvme_cb_fn_t ;


 int M_NOWAIT ;
 int M_ZERO ;
 int TRUE ;
 int nvme_request_zone ;
 struct nvme_request* uma_zalloc (int ,int) ;

__attribute__((used)) static __inline struct nvme_request *
_nvme_allocate_request(nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = uma_zalloc(nvme_request_zone, M_NOWAIT | M_ZERO);
 if (req != ((void*)0)) {
  req->cb_fn = cb_fn;
  req->cb_arg = cb_arg;
  req->timeout = TRUE;
 }
 return (req);
}
