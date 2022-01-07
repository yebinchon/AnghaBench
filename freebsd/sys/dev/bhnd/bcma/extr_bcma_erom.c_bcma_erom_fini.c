
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_erom {int eio; } ;
typedef int bhnd_erom_t ;


 int bhnd_erom_io_fini (int ) ;

__attribute__((used)) static void
bcma_erom_fini(bhnd_erom_t *erom)
{
 struct bcma_erom *sc = (struct bcma_erom *)erom;

 bhnd_erom_io_fini(sc->eio);
}
