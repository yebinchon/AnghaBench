
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {int (* tell ) (struct bhnd_erom_io*,int *,int *) ;} ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int stub1 (struct bhnd_erom_io*,int *,int *) ;

int
bhnd_erom_io_tell(struct bhnd_erom_io *eio, bhnd_addr_t *addr,
    bhnd_size_t *size)
{
 return (eio->tell(eio, addr, size));
}
