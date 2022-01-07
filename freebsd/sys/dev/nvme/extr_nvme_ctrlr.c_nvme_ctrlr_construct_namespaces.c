
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct nvme_namespace {int dummy; } ;
struct TYPE_2__ {int nn; } ;
struct nvme_controller {struct nvme_namespace* ns; TYPE_1__ cdata; } ;


 int NVME_MAX_NAMESPACES ;
 size_t min (int ,int ) ;
 int nvme_ns_construct (struct nvme_namespace*,size_t,struct nvme_controller*) ;

__attribute__((used)) static int
nvme_ctrlr_construct_namespaces(struct nvme_controller *ctrlr)
{
 struct nvme_namespace *ns;
 uint32_t i;

 for (i = 0; i < min(ctrlr->cdata.nn, NVME_MAX_NAMESPACES); i++) {
  ns = &ctrlr->ns[i];
  nvme_ns_construct(ns, i+1, ctrlr);
 }

 return (0);
}
