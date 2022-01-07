
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_NVME ;
 struct bio* g_new_bio () ;
 struct bio** malloc (int,int ,int ) ;
 int nvme_free_child_bios (int,struct bio**) ;

__attribute__((used)) static struct bio **
nvme_allocate_child_bios(int num_bios)
{
 struct bio **child_bios;
 int err = 0, i;

 child_bios = malloc(num_bios * sizeof(struct bio *), M_NVME, M_NOWAIT);
 if (child_bios == ((void*)0))
  return (((void*)0));

 for (i = 0; i < num_bios; i++) {
  child_bios[i] = g_new_bio();
  if (child_bios[i] == ((void*)0))
   err = ENOMEM;
 }

 if (err == ENOMEM) {
  nvme_free_child_bios(num_bios, child_bios);
  return (((void*)0));
 }

 return (child_bios);
}
