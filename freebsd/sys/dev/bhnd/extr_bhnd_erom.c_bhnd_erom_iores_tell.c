
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_erom_iores {TYPE_1__* mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;
struct TYPE_2__ {int res; } ;


 int ENXIO ;
 int rman_get_size (int ) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
bhnd_erom_iores_tell(struct bhnd_erom_io *eio, bhnd_addr_t *addr,
    bhnd_size_t *size)
{
 struct bhnd_erom_iores *iores = (struct bhnd_erom_iores *)eio;

 if (iores->mapped == ((void*)0))
  return (ENXIO);

 *addr = rman_get_start(iores->mapped->res);
 *size = rman_get_size(iores->mapped->res);

 return (0);
}
