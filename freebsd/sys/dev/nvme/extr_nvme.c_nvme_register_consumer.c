
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_consumer {int id; int fail_fn; int async_fn; int ctrlr_fn; int ns_fn; } ;
typedef int nvme_cons_ns_fn_t ;
typedef int nvme_cons_fail_fn_t ;
typedef int nvme_cons_ctrlr_fn_t ;
typedef int nvme_cons_async_fn_t ;


 int INVALID_CONSUMER_ID ;
 int NVME_MAX_CONSUMERS ;
 struct nvme_consumer* nvme_consumer ;
 int nvme_notify_new_consumer (struct nvme_consumer*) ;
 int printf (char*) ;

struct nvme_consumer *
nvme_register_consumer(nvme_cons_ns_fn_t ns_fn, nvme_cons_ctrlr_fn_t ctrlr_fn,
         nvme_cons_async_fn_t async_fn,
         nvme_cons_fail_fn_t fail_fn)
{
 int i;




 for (i = 0; i < NVME_MAX_CONSUMERS; i++)
  if (nvme_consumer[i].id == INVALID_CONSUMER_ID) {
   nvme_consumer[i].id = i;
   nvme_consumer[i].ns_fn = ns_fn;
   nvme_consumer[i].ctrlr_fn = ctrlr_fn;
   nvme_consumer[i].async_fn = async_fn;
   nvme_consumer[i].fail_fn = fail_fn;

   nvme_notify_new_consumer(&nvme_consumer[i]);
   return (&nvme_consumer[i]);
  }

 printf("nvme(4): consumer not registered - no slots available\n");
 return (((void*)0));
}
