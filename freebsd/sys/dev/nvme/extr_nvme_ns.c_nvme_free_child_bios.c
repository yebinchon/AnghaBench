
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int M_NVME ;
 int free (struct bio**,int ) ;
 int g_destroy_bio (struct bio*) ;

__attribute__((used)) static void
nvme_free_child_bios(int num_bios, struct bio **child_bios)
{
 int i;

 for (i = 0; i < num_bios; i++) {
  if (child_bios[i] != ((void*)0))
   g_destroy_bio(child_bios[i]);
 }

 free(child_bios, M_NVME);
}
