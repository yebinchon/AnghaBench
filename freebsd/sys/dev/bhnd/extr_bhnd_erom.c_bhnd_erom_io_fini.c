
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {void (* fini ) (struct bhnd_erom_io*) ;} ;


 void stub1 (struct bhnd_erom_io*) ;

void
bhnd_erom_io_fini(struct bhnd_erom_io *eio)
{
 if (eio->fini != ((void*)0))
  return (eio->fini(eio));
}
