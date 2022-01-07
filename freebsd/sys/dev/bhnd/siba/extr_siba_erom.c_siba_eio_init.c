
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_erom_io {int ncores; struct bhnd_erom_io* eio; } ;
struct bhnd_erom_io {int dummy; } ;



__attribute__((used)) static int
siba_eio_init(struct siba_erom_io *io, struct bhnd_erom_io *eio, u_int ncores)
{
 io->eio = eio;
 io->ncores = ncores;
 return (0);
}
