
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int ENOSYS ;
 int KASSERT (int ,char*) ;
 unsigned int PAGE_SIZE ;
 int gnttab_map (int ,unsigned int) ;
 int * gnttab_pseudo_phys_res ;
 int gnttab_pseudo_phys_res_id ;
 unsigned int max_nr_grant_frames () ;
 unsigned int nr_grant_frames ;
 int panic (char*) ;
 scalar_t__ resume_frames ;
 scalar_t__ rman_get_start (int *) ;
 int * xenmem_alloc (int *,int *,unsigned int) ;

int
gnttab_resume(device_t dev)
{
 unsigned int max_nr_gframes, nr_gframes;

 nr_gframes = nr_grant_frames;
 max_nr_gframes = max_nr_grant_frames();
 if (max_nr_gframes < nr_gframes)
  return (ENOSYS);

 if (!resume_frames) {
  KASSERT(dev != ((void*)0),
      ("No resume frames and no device provided"));

  gnttab_pseudo_phys_res = xenmem_alloc(dev,
      &gnttab_pseudo_phys_res_id, PAGE_SIZE * max_nr_gframes);
  if (gnttab_pseudo_phys_res == ((void*)0))
   panic("Unable to reserve physical memory for gnttab");
  resume_frames = rman_get_start(gnttab_pseudo_phys_res);
 }

 return (gnttab_map(0, nr_gframes - 1));
}
