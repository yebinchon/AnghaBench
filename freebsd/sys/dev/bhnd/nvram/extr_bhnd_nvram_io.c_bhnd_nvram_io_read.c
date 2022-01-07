
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_io {TYPE_1__* iops; } ;
struct TYPE_2__ {int (* read ) (struct bhnd_nvram_io*,size_t,void*,size_t) ;} ;


 int stub1 (struct bhnd_nvram_io*,size_t,void*,size_t) ;

int
bhnd_nvram_io_read(struct bhnd_nvram_io *io, size_t offset, void *buffer,
    size_t nbytes)
{
 return (io->iops->read(io, offset, buffer, nbytes));
}
