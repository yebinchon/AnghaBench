
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eio; } ;
struct siba_erom {TYPE_1__ io; } ;
typedef int bhnd_erom_t ;


 int bhnd_erom_io_fini (int ) ;

__attribute__((used)) static void
siba_erom_fini(bhnd_erom_t *erom)
{
 struct siba_erom *sc = (struct siba_erom *)erom;

 bhnd_erom_io_fini(sc->io.eio);
}
