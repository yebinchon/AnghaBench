
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_iores {int mapped_rid; int * mapped; int owner; } ;
struct bhnd_erom_io {int dummy; } ;


 int M_BHND ;
 int SYS_RES_MEMORY ;
 int bhnd_release_resource (int ,int ,int,int *) ;
 int free (struct bhnd_erom_io*,int ) ;

__attribute__((used)) static void
bhnd_erom_iores_fini(struct bhnd_erom_io *eio)
{
 struct bhnd_erom_iores *iores = (struct bhnd_erom_iores *)eio;


 if (iores->mapped) {
  bhnd_release_resource(iores->owner, SYS_RES_MEMORY,
      iores->mapped_rid, iores->mapped);
  iores->mapped = ((void*)0);
  iores->mapped_rid = -1;
 }

 free(eio, M_BHND);
}
