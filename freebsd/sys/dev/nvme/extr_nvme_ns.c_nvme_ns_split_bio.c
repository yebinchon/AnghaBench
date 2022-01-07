
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_namespace {int dummy; } ;
struct bio {int dummy; } ;


 int ENOMEM ;
 int M_NVME ;
 int free (struct bio**,int ) ;
 int g_destroy_bio (struct bio*) ;
 int nvme_bio_child_done ;
 int nvme_bio_child_inbed (struct bio*,int) ;
 struct bio** nvme_construct_child_bios (struct bio*,int ,int*) ;
 int nvme_ns_bio_process (struct nvme_namespace*,struct bio*,int ) ;

__attribute__((used)) static int
nvme_ns_split_bio(struct nvme_namespace *ns, struct bio *bp,
    uint32_t alignment)
{
 struct bio *child;
 struct bio **child_bios;
 int err, i, num_bios;

 child_bios = nvme_construct_child_bios(bp, alignment, &num_bios);
 if (child_bios == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < num_bios; i++) {
  child = child_bios[i];
  err = nvme_ns_bio_process(ns, child, nvme_bio_child_done);
  if (err != 0) {
   nvme_bio_child_inbed(bp, err);
   g_destroy_bio(child);
  }
 }

 free(child_bios, M_NVME);
 return (0);
}
