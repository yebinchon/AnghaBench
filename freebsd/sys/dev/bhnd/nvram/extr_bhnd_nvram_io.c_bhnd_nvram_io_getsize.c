
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_io {TYPE_1__* iops; } ;
struct TYPE_2__ {size_t (* getsize ) (struct bhnd_nvram_io*) ;} ;


 size_t stub1 (struct bhnd_nvram_io*) ;

size_t
bhnd_nvram_io_getsize(struct bhnd_nvram_io *io)
{
 return (io->iops->getsize(io));
}
