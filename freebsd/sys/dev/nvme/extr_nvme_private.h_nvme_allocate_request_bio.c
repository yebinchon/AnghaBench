
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bio* bio; } ;
struct nvme_request {TYPE_1__ u; int type; } ;
struct bio {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_REQUEST_BIO ;
 struct nvme_request* _nvme_allocate_request (int ,void*) ;

__attribute__((used)) static __inline struct nvme_request *
nvme_allocate_request_bio(struct bio *bio, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = _nvme_allocate_request(cb_fn, cb_arg);
 if (req != ((void*)0)) {
  req->type = NVME_REQUEST_BIO;
  req->u.bio = bio;
 }
 return (req);
}
