
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_io {TYPE_1__* iops; } ;
struct TYPE_2__ {int (* write_ptr ) (struct bhnd_nvram_io*,size_t,void**,size_t,size_t*) ;} ;


 int stub1 (struct bhnd_nvram_io*,size_t,void**,size_t,size_t*) ;

int
bhnd_nvram_io_write_ptr(struct bhnd_nvram_io *io, size_t offset, void **ptr,
    size_t nbytes, size_t *navail)
{
 return (io->iops->write_ptr(io, offset, ptr, nbytes, navail));
}
