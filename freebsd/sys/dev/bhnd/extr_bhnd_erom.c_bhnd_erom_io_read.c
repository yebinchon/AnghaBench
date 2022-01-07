
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhnd_erom_io {int (* read ) (struct bhnd_erom_io*,int ,int ) ;} ;
typedef int bhnd_size_t ;


 int stub1 (struct bhnd_erom_io*,int ,int ) ;

uint32_t
bhnd_erom_io_read(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
 return (eio->read(eio, offset, width));
}
