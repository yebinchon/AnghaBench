
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_registry {int lock; int entries; } ;


 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

int
bhnd_service_registry_init(struct bhnd_service_registry *bsr)
{
 STAILQ_INIT(&bsr->entries);
 mtx_init(&bsr->lock, "bhnd_service_registry lock", ((void*)0), MTX_DEF);

 return (0);
}
