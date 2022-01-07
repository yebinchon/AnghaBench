
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_namespace {int * cdev; } ;


 int destroy_dev (int *) ;

void nvme_ns_destruct(struct nvme_namespace *ns)
{

 if (ns->cdev != ((void*)0))
  destroy_dev(ns->cdev);
}
