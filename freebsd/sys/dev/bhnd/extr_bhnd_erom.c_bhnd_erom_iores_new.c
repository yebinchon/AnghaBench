
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {int fini; int read; int tell; int map; } ;
struct bhnd_erom_iores {int owner_rid; int mapped_rid; struct bhnd_erom_io eio; int * mapped; int owner; } ;
typedef int device_t ;


 int M_BHND ;
 int M_WAITOK ;
 int M_ZERO ;
 int bhnd_erom_iores_fini ;
 int bhnd_erom_iores_map ;
 int bhnd_erom_iores_read ;
 int bhnd_erom_iores_tell ;
 struct bhnd_erom_iores* malloc (int,int ,int) ;

struct bhnd_erom_io *
bhnd_erom_iores_new(device_t dev, int rid)
{
 struct bhnd_erom_iores *iores;

 iores = malloc(sizeof(*iores), M_BHND, M_WAITOK | M_ZERO);
 iores->eio.map = bhnd_erom_iores_map;
 iores->eio.tell = bhnd_erom_iores_tell;
 iores->eio.read = bhnd_erom_iores_read;
 iores->eio.fini = bhnd_erom_iores_fini;

 iores->owner = dev;
 iores->owner_rid = rid;
 iores->mapped = ((void*)0);
 iores->mapped_rid = -1;

 return (&iores->eio);
}
